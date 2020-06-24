# use a feature that will exist on desktop vs. server
simple_feature = windows_server? ? 'SNMP' : 'XPS.Viewer'

windows_feature "install #{simple_feature}" do
  feature_name simple_feature
end

windows_feature "remove #{simple_feature}" do
  feature_name [simple_feature]
  action :remove
end

windows_feature 'Install SNMP again' do
  feature_name simple_feature.downcase # lowercase to validate case doesn't matter
end

windows_feature_dism %w(PowerShell TFTP)

windows_feature 'Remove FTP' do
  feature_name 'Web-Ftp-Server'
  action :remove
  install_method :windows_feature_powershell
end

windows_feature 'web-ftp-server' do # lowercase on purpose
  all true
  install_method :windows_feature_powershell
end

windows_feature_powershell %w(Web-Asp-Net45 Web-Net-Ext45)

windows_feature ['NPAS'] do
  management_tools true
  install_method :windows_feature_powershell
end
