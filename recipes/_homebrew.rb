homebrew_tap 'homebrew/dupes'

homebrew_tap 'homebrew/dupes' do
  action :untap
end

homebrew_tap "Let's install homebrew/dupes" do
  tap_name 'homebrew/dupes'
  url 'https://github.com/homebrew/homebrew-dupes.git'
  full true
end

homebrew_cask 'google-chrome'

homebrew_cask "Let's remove google-chrome" do
  cask_name 'google-chrome'
  install_cask false
  action :remove
end

package %w(git openssl)

package 'git' do
  action :remove
end