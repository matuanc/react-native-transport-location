require "json"

package = JSON.parse(File.read(File.join(__dir__, '..', "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNTransportLocation"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                    @uiw/react-native-transport-location
                   DESC
  s.homepage     = "https://github.com/uiwjs/@uiw/react-native-transport-location"
  # brief license entry:
  s.license      = package["license"]
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Kenny Wong" => "wowohoo@qq.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/uiwjs/@uiw/react-native-transport-location.git", :tag => "#{s.version}" }

  s.source_files = "**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency 'AMapLocation'
  s.vendored_frameworks = 'MapManager.framework'
  s.vendored_frameworks = 'GMObjC.framework'
  # s.dependency 'GMObjC', '3.0.0'
  s.library = "c++", "z"
  # ...
  # s.dependency "..."
end

