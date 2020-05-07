windows_feature 'install SNMP' do
  feature_name 'SNMP'
end

windows_feature 'remove SNMP' do
  feature_name ['SNMP']
  action :remove
end

windows_feature 'Install SNMP again' do
  feature_name 'snmp' # lowercase on purpose
end

windows_feature_dism %w(TelnetClient TFTP)

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
