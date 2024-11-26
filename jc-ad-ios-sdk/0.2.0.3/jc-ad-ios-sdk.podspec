#
# Be sure to run `pod lib lint jc-ad-ios-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'jc-ad-ios-sdk'
  s.version          = '0.2.0.3'
  s.summary          = 'Ad Combination SDK for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Ad Combination SDK for iOS. Apis are inherited from Mopub ios sdk with JC Prefix.
                       DESC

  s.homepage         = 'https://github.com/uspython/jc-ad-ios-sdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jeffzhao' => 'jeff40577@gmail.com' }
  s.source           = { :git => 'https://github.com/uspython/jc-ad-ios-sdk.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/uspython'
  s.static_framework = true

  s.ios.deployment_target = '12.2'
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
      ss.xcconfig = {
        'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/Headers/Private" "${PODS_ROOT}/Headers/Private/Protobuf" "${PODS_ROOT}/Headers/Public" "${PODS_ROOT}/Headers/Public/Protobuf" "${PODS_ROOT}/GoogleUserMessagingPlatform/Frameworks/Release" "${PODS_XCFRAMEWORKS_BUILD_DIR}/GoogleUserMessagingPlatform"',
        #workaround: https://developers.google.com/admob/ios/mediation/facebook#step_4_additional_code_required
        'LIBRARY_SEARCH_PATHS' => '$(inherited) "$(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)" "$(SDKROOT)/usr/lib/swift"',
        'RUNPATH_SEARCH_PATHS' => '/usr/lib/swift'
      }
      ss.public_header_files = 'jc-ad-ios-sdk/Sources/**/*.h'
      ss.source_files = "jc-ad-ios-sdk/Sources/**/*.{h,m,mm,c}"
      ss.exclude_files = ["jc-ad-ios-sdk/Sources/MopubUnityPlugin/", "jc-ad-ios-sdk/Sources/RemoteConfig/pbproto/"]
      ss.frameworks = 'UIKit', 'CoreLocation', 'AppTrackingTransparency'
      ss.dependency 'AppLovinSDK', '~> 11.4.3'
      ss.dependency 'Google-Mobile-Ads-SDK', '~> 9.8.0'
      ss.dependency 'UnityAds', '~> 4.2.1'
      ss.dependency 'Protobuf'
      ss.dependency 'GoogleUserMessagingPlatform', '2.0.0'
      # the same as android/unity
      ss.dependency 'jc-ad-ios-sdk/PB'
  end
  
  s.subspec "PB" do |ss|
    ss.xcconfig = {
      'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/Headers/Private" "${PODS_ROOT}/Headers/Private/Protobuf" "${PODS_ROOT}/Headers/Public" "${PODS_ROOT}/Headers/Public/Protobuf" '
    }
    ss.requires_arc = false
    ss.source_files = "jc-ad-ios-sdk/Sources/RemoteConfig/pbproto/"
    ss.dependency 'Protobuf', '3.19.1'
  end
  
  # s.resource_bundles = {
  #   'jc-ad-ios-sdk' => ['jc-ad-ios-sdk/Assets/*.png']
  # }

  

end
