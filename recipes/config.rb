node['dropbox']['dir']['work'].each do |dir|
	directory "#{dir}" do
		owner "root"
		group "root"
		mode "0755"
		action :create
		recursive true
	end
end

remote_file "#{node['dropbox']['dir']['work']}/dropbox.py" do
        source "#{node['dropbox']['script']['url']}"
        mode "0755"
end

service "dropbox" do
	supports :status => false, :restart => true, :reload => true
	pattern "dropbox"
	action [ :enable ]
end

template "/etc/init.d/dropbox" do
	source "init-dropbox.erb"
	mode   "0775"
	owner  "root"
	group  "root"
end

service "dropbox" do
	action :start
end


