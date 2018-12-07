registry_key "HKEY_LOCAL_MACHINE\\path-to-key\\Policies\\System" do
  values [{
    name: 'EnableLUA',
    type: :dword,
    data: 0
  }]
  recursive true
  action :create
end

registry_key 'HKEY_LOCAL_MACHINE\path-to-key\Policies\System' do
  values [{
    name: 'EnableLUA',
    type: :dword,
    data: 0
  }]
  recursive true
  action :create
end

registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\path\\to\\key\\AU" do
  values [{
    name: 'NoAutoRebootWithLoggedOnUsers',
    type: :dword,
    data: ''
    }]
  recursive true
  action :delete
end

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\path\to\key\AU' do
  values [{
    name: 'NoAutoRebootWithLoggedOnUsers',
    type: :dword,
    data: ''
    }]
  action :delete
end
