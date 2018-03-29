dmg_package 'Tunnelblick' do
  source   'https://tunnelblick.net/release/Tunnelblick_3.7.0_build_4790.dmg'
  checksum '5053038aa8caf7dea66dcab11d6d240672216e6546eff4c2622e216c61af85e5'
  action   :install
end

dmg_package 'virtualbox' do
  app 'virtualbox'
  source 'http://download.virtualbox.org/virtualbox/4.3.40/VirtualBox-4.3.40-110317-OSX.dmg'
  checksum 'eb70fc0f36844ced6dc7deeb30397866fbaffb4a8dfb6071b047e943cae6a312'
  type 'pkg'
  accept_eula true
  allow_untrusted true
end
