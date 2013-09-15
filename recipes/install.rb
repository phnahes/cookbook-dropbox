directory "#{node[:dropbox]["dir"]["work"]}" do
	owner "root"
	group "root"
	mode "0775"
	action :create
	recursive true
end

remote_file "#{node[:dropbox]["tarball"]}" do
	source "#{node[:dropbox]["tar"]["url"]}"
	mode "0644"
end

execute "tar" do
	user node[:dropbox]["user"]
	group node[:dropbox]["group"]

	installation_dir = node[:dropbox]["dir"]["work"]
	cwd installation_dir
	command "tar zxf #{node[:dropbox]["tarball"]}"
	creates installation_dir
	action :run
end
