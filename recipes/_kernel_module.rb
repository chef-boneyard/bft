# ufs isn't available on centos/fedora, but lp isn't available on Amazon
module_name = platform_family?('rhel', 'fedora') ? 'lp' : 'ufs'

kernel_module module_name

kernel_module module_name do
  action :load
end

kernel_module 'appletalk' do
  action :blacklist
end

kernel_module 'l2tp_ppp' do
  action :unload
end

kernel_module 'atm' do
  action :uninstall
end
