apt_update

if platform?('ubuntu')
  # Apt Repository
  apt_repository 'juju' do
    uri 'http://ppa.launchpad.net/juju/stable/ubuntu'
    components ['main']
    distribution 'trusty'
    key 'C8068B11'
    keyserver 'keyserver.ubuntu.com'
    action :add
  end

  # Apt Repository w/ keyserver, no key, and not specifying the component
  apt_repository 'openstack' do
    uri 'ppa:managedit/openstack'
    keyserver 'hkp://keyserver.ubuntu.com:80'
    distribution 'bionic'
    action :add
  end

  # PPA Repository w/o key specified
  apt_repository 'gimp' do
    uri 'ppa:otto-kesselgulasch/gimp'
  end

  # Apt repository that suppresses output for sensitive resources.
  apt_repository 'haproxy' do
    uri 'http://ppa.launchpad.net/vbernat/haproxy-1.5/ubuntu'
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key '1C61B9CD'
    sensitive true
    action :add
  end
end

# Apt Repository with arch
apt_repository 'cloudera' do
  uri 'http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh'
  arch 'amd64'
  distribution 'precise-cdh4'
  components ['contrib']
  key 'http://archive.cloudera.com/debian/archive.key'
  action :add
end

# Apt repository and install a package it contains
apt_repository 'nginx' do
  uri "http://nginx.org/packages/#{node['platform']}"
  components ['nginx']
  key 'http://nginx.org/keys/nginx_signing.key'
  deb_src true
end

package 'nginx' do
  action :install
end

package %w(nginx nginx-extras)

# Apt Preferences
apt_preference 'chef' do
  pin 'version 12.7.2-1'
  pin_priority '700'
end

# Preference file renaming
file '/etc/apt/preferences.d/wget' do
  action :touch
end

apt_preference 'wget' do
  pin 'version 1.13.4-3'
  pin_priority '1001'
end

# COOK-2338
apt_preference 'dotdeb' do
  glob '*'
  pin 'origin packages.dotdeb.org '
  pin_priority '700'
end

# rename preferences with wildcards
file '/etc/apt/preferences.d/*.pref' do
  action :touch
end

apt_preference '*' do
  pin 'origin nginx.org'
  pin_priority '1001'
end

# Preference file removal
file '/etc/apt/preferences.d/camel.pref' do
  action :touch
end

apt_preference 'camel' do
  action :remove
end
