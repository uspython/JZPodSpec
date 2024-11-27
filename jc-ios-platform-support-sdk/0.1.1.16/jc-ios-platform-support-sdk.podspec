#
# Be sure to run `pod lib lint jc-ios-platform-support-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'jc-ios-platform-support-sdk'
  s.version          = '0.1.1.16'
  s.summary          = 'SDK for JC Unity PlatformSupport'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Get IDFA,IDFV or sharekit
                       DESC

  s.homepage         = 'https://github.com/uspython/jc-ios-platform-support-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JeffZhao' => 'jeff40577@gmail.com' }
  s.source           = { :git => 'https://github.com/uspython/jc-ios-platform-support-sdk.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/uspython'

  s.ios.deployment_target = '12.2'

  s.source_files = 'jc-ios-platform-support-sdk/Classes/**/*'
  s.weak_framework = 'LinkPresentation'
  s.frameworks = 'AudioToolbox'
  s.swift_versions = ['5.0']
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  # s.frameworks = 'StoreKit'  # s.resource_bundles = {
  #   'jc-ios-platform-support-sdk' => ['jc-ios-platform-support-sdk/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
