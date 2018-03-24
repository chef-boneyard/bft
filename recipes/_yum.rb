yum_repository 'epel' do
  enabled true
  description "Extra Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch"
  failovermethod 'priority'
  gpgkey "https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-#{node['platform_version'].to_i}"
  gpgcheck true
  mirrorlist "https://mirrors.fedoraproject.org/metalink?repo=epel-#{node['platform_version'].to_i}&arch=$basearch"
end
