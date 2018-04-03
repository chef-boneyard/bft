name 'bft'
maintainer 'Tim Smith'
maintainer_email 'tsmith@chef.io'
license 'Apache-2.0'
description 'Test resources in core Chef'
version '1.0'
%w(ubuntu debian redhat centos suse opensuse opensuseleap scientific oracle amazon).each do |os|
  supports os
end
source_url 'https://github.com/tas50/bft'
issues_url 'https://github.com/tas50/bft/issues'
chef_version '>= 14'
