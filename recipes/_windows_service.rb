# Create a service
windows_service 'chef-client' do
  action :create
  binary_path_name "C:\\opscode\\chef\\bin"
end

# Create service with ‘service_name’ and ‘display_name’:
windows_service 'Create chef client as service' do
  action :create
  display_name "CHEF-CLIENT"
  service_name "chef-client"
  binary_path_name "C:\\opscode\\chef\\bin"
end

# Create service with the :manual startup type:
windows_service 'chef-client-manual' do
  action :create
  binary_path_name "C:\\opscode\\chef\\bin"
  startup_type :manual
end

# Create a service with the :disabled startup type:
windows_service 'chef-client-disabled' do
  action :create
  binary_path_name "C:\\opscode\\chef\\bin"
  startup_type :disabled
end

# Create service with the :automatic startup type and delayed start enabled:
windows_service 'chef-client-automatic' do
  action :create
  binary_path_name "C:\\opscode\\chef\\bin"
  startup_type :automatic
  delayed_start true
end

# Create service with a description:
windows_service 'chef-client-description' do
  action :create
  binary_path_name "C:\\opscode\\chef\\bin"
  startup_type :automatic
  description "Chef client as service"
end

# Delete service with 'service_name'
windows_service 'Delete chef client' do
  action :delete
  service_name "chef-client-description"
end

# Delete service with the 'name' of chef-client-automatic
windows_service 'chef-client-automatic' do
  action :delete
end

# Change an existing service from automatic to manual startup:
windows_service 'chef-client' do
  action :configure
  binary_path_name "C:\\opscode\\chef\\bin"
  startup_type :manual
end
