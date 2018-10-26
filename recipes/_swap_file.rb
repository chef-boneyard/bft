swap_file '/mnt/swap' do
  size 10
  persist true
  not_if { platform_family?('suse') } # sles / opensuse filesystems don't work with swap files
end
