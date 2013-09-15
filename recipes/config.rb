remote_file "#{node[:dropbox]["dir"]["work"]}/dropbox.py" do
        source "#{node[:dropbox]["script"]["url"]}"
        mode "0755"
end

package "python-gpgme"

execute "#{node[:dropbox]["dir"]["work"]}/dropbox.py start -i"

template "/etc/init.d/dropbox" do
	source "init-dropbox.erb"
	mode   "0775"
	owner  "root"
	group  "root"
end

service "dropbox" do
	supports :status => false, :restart => true, :reload => true
	pattern "dropbox"
	action [ :enable, :start ]
end

