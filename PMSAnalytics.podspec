#
# Be sure to run `pod lib lint PMSAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PMSAnalytics'
  s.version          = '1.0.0'
  s.summary          = 'PMSAnalytics for PMS App'
  s.swift_version    = '5.4'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'PMSAnalytics for PMS App.'

  s.homepage         = 'https://github.com/PMS-Frameworks/PMSAnalytics'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'goeun1001' => 'gogo8272@gmail.com' }
  s.source           = { :git => 'https://github.com/PMS-Frameworks/PMSAnalytics.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'PMSAnalytics/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PMSAnalytics' => ['PMSAnalytics/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Firebase/Analytics'
  s.dependency 'Firebase/Crashlytics'
  s.dependency 'Firebase/DynamicLinks'
  s.dependency 'Firebase/Performance'
  
end
