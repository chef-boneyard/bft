handler_path = "#{File.expand_path(File.join(Chef::Config[:file_cache_path], '..'))}/handlers"

directory handler_path do
  recursive true
  action :create
end

cookbook_file "#{handler_path}/my_handler.rb" do
  source 'my_handler.rb'
end

chef_handler 'MyCorp::MyHandler' do
  source "#{handler_path}/my_handler.rb"
  action :enable
end
