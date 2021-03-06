#
# Be sure to run `pod lib lint PanDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PanDK"
  s.version          = “0.1.2”
  s.summary          = "DevelopKit by psmortal"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
 som little utils by psmortal
                       DESC

  s.homepage         = "https://github.com/psmortal/PanDK"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "psmortal" => "pansifan0525@163.com" }
  s.source           = { :git => "https://github.com/psmortal/PanDK.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'PanDK' => ['Pod/Assets/*.png']
  }
  s.dependency 'Alamofire', '~> 3.3.0'
  s.dependency 'SwiftyJSON', '~> 2.3.2'
  s.dependency 'MJRefresh', '~> 3.1.0'
end
