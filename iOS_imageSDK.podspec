#
# Be sure to run `pod lib lint iOS_imageSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOS_imageSDK'
  s.version          = '0.1.0'
  s.summary          = 'iOS_imageSDK use for image operations.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                            iOS_imageSDK use for image operations
                        DESC

  s.homepage         = 'https://github.com/JaydeepOpus/iOS_imageSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # { :type => 'MIT', :file => 'LICENSE' }
  s.license          = 'MIT'
  s.author           = { 'Jaydeep' => 'jaydeep.patoliya.opusconsulting.com' }
  s.source           = { :git => 'https://github.com/JaydeepOpus/iOS_imageSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Classes/**/*'
  
  # s.resource_bundles = {
  #   'iOS_imageSDK' => ['iOS_imageSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
