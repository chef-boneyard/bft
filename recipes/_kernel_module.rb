kernel_module 'ufs'

kernel_module 'ufs' do
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
