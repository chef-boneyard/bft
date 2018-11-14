hostname 'chefnode'

user 'tim' do
  full_name 'Tim Smith'
  comment "This is Tim's user"
  password "h@ckThePl@net"
end

include_recipe '::_windows_autorun'
include_recipe '::_windows_certificate'

# legacy name
env 'ComSpec' do
  value "C:\\Windows\\system32\\cmd.exe"
end

# chef 14+ name
windows_env 'ComSpec' do
  value "C:\\Windows\\system32\\cmd.exe"
end

include_recipe '::_windows_feature'
include_recipe '::_windows_firewall'
include_recipe '::_windows_font'
include_recipe '::_windows_pagefile'
include_recipe '::_windows_package'
include_recipe '::_windows_path'
include_recipe '::_windows_printer'
include_recipe '::_windows_printer_port'
include_recipe '::_windows_service'
include_recipe '::_windows_share'
include_recipe '::_windows_shortcut'
include_recipe '::_windows_task'

windows_workgroup 'myworkgroup'
