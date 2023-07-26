require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNCardConnectReactLibrary"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = "React Native library for Card connect account tokenization"
  s.homepage     = "https://github.com/brij-dev/react-native-card-connect"
  s.license      = "MIT"
  s.authors      = { "Brijesh Singh" => "brijeshsinghcs0013@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/fmtops/react-native-card-connect.git", :tag => "#{s.version}" }
  s.source_files = "ios/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
  s.ios.vendored_frameworks = "**/ios/BoltMobileSDK.framework"
  s.resource = "ios/BoltMobileSDK.framework/IDTech.bundle"
end
