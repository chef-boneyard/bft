# Create a TCP/IP printer port named ‘IP_10.4.64.37’ with all defaults
windows_printer_port '10.4.64.37' do
  action :create
end

# Create a port with more options
windows_printer_port '10.4.64.39' do
  port_name 'My awesome port'
  snmp_enabled true
  port_protocol 2
end

# Delete a printer port
windows_printer_port '10.4.64.37' do
  action :delete
end

# Delete a printer port that doesn't exist
windows_printer_port '10.4.64.35' do
  action :delete
end

# Delete a port with a custom port_name
windows_printer_port '10.4.64.38' do
  port_name 'My awesome port'
  action :delete
end
