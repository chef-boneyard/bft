windows_feature 'install SNMP' do
  feature_name 'SNMP'
end

windows_feature 'remove SNMP' do
  feature_name ['SNMP']
  action :remove
end

windows_feature 'Install SNMP again' do
  feature_name ['SNMP']
end

windows_feature_dism %w(TelnetClient TFTP)

unless node['platform_version'].to_f < 6.2
  windows_feature 'Remove FTP for Appveyor' do
    feature_name 'Web-Ftp-Server'
    action :remove
    install_method :windows_feature_powershell
  end

  windows_feature 'Web-Ftp-Server' do
    all true
    install_method :windows_feature_powershell
  end

  windows_feature_powershell ['Web-Asp-Net45', 'Web-Net-Ext45']

  windows_feature ['NPAS'] do
    management_tools true
    install_method :windows_feature_powershell
  end
end
