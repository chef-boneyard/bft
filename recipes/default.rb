include_recipe '::_apt' if platform_family?('debian')
include_recipe '::_yum' if platform_family?('rhel')
include_recipe '::_chef_handler'
include_recipe '::_ohai_hint'
include_recipe '::_openssl'
include_recipe '::_rhsm' if platform?('redhat')
include_recipe '::_sudo'
include_recipe '::_swap_file'
include_recipe '::_sysctl' unless platform?('suse') && node['platform_version'].to_i < 12
include_recipe '::_cron'

build_essential 'compilation tools'

hostname 'chefnode.example.com'

locale 'en_US.UTF-8'

timezone 'UTC'
