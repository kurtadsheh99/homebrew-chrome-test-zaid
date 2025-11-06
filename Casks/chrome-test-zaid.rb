cask "chrome-test-zaid" do
  version "142.0.7444.60"
  sha256 "8bfc128d0bbd2341f5efcf6e23c7635aba49e4d42cefc62c10d9e1f173b8bd01"

  url "https://dl.google.com/chrome/mac/universal/stable/CHFA/googlechrome.dmg"
  name "Google Chrome"
  desc "Web browser from Google"
  homepage "https://www.google.com/chrome/"
  
  # Check if the app already exists in /Applications and remove it if it does
  app_name = "Google Chrome.app"
  app_path = "/Applications/#{app_name}"

  if File.exist?(app_path)
    puts "Removing existing application: #{app_name}"
    FileUtils.rm_rf(app_path) # Remove the existing app
  end

  # Install the new app from the DMG

  app "Google Chrome.app"
end
