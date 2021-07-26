Pod::Spec.new do |s|
  version = "1.3.2"
  downloadUrl = "https://s3.amazonaws.com/evergage-dist/mobile-sdk/ios/evergage-sdk-ios-" + version + ".zip" 
  docUrl = "https://developer.evergage.com/mobile-sdk/ios/" + version + "/"
  s.cocoapods_version     = ">= 1.10"
  s.name                  = "Evergage"
  s.version               = version
  s.summary               = "Evergage SDK for iOS"
  s.description           = <<-DESC
      Tracks activity in iOS applications and personalizes the application based on user activity.
                               DESC
  s.homepage              = "http://www.evergage.com"
  s.license               = { :type => "Commercial", :text => "https://www.salesforce.com/company/legal/agreements/" }
  s.author                = { "Evergage" => "support@evergage.com" }
  s.platform              = :ios
  s.ios.deployment_target = "9.0"
  s.source                = { :http => downloadUrl }
  s.vendored_frameworks   = "dynamic/Evergage.xcframework"
  # s.vendored_frameworks   = "static/Evergage.xcframework"
  s.ios.frameworks        = "UIKit", "Foundation", "CoreGraphics", "QuartzCore", "SystemConfiguration"
  s.ios.weak_framework    = "UserNotifications"
  s.ios.libraries         = "z"
end