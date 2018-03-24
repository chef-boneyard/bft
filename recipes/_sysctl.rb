sysctl 'vm.swappiness' do
  value 19
end

sysctl 'kernel.msgmax' do
  value 9000
end

sysctl 'kernel.msgmax' do
  value 9000
  action :remove
end

sysctl_param 'bogus.sysctl_val' do
  value 9000
  action :remove
end
