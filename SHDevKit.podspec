#
# Be sure to run `pod lib lint SHDevKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SHDevKit'
  s.version          = '0.1.0'
  s.summary          = 'A iOS project develop kit.'
  s.swift_version = '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        這是我在 iOS 開發過程中逐漸累積的一些 class ，包含一些封裝。
                       DESC

  s.homepage         = 'https://github.com/smallhappy/SHDevKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'smallhappy' => 'neonn80085@hotmail.com' }
  s.source           = { :git => 'https://github.com/smallhappy/SHDevKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SHDevKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SHDevKit' => ['SHDevKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

end
