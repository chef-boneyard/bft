swap_file '/mnt/swap' do
  size 10
  persist true
  not_if { node['filesystem']['by_mountpoint']['/']['fs_type'] == 'btrfs' }
end
