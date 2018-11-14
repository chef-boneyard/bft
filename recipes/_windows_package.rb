windows_package '7zip 18.05 (x64 edition)' do
  source 'https://www.7-zip.org/a/7z1805-x64.msi'
  remote_file_attributes ({
    :path => 'C:\\7zip.msi',
    :checksum => '898c1ca0015183fe2ba7d55cacf0a1dea35e873bf3f8090f362a6288c6ef08d7'
  })
end

windows_package 'Mercurial 4.7.2 (64-bit)' do
  source 'https://www.mercurial-scm.org/release/windows/Mercurial-4.7.2-x64.exe'
  checksum '48229827ca9b040289cf973f36866779140ed63b4a22824b7d115e1869e69955'
end

windows_package 'Microsoft Visual C++ 2005 Redistributable' do
  source 'https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x86.exe'
  installer_type :custom
  options '/Q'
end
