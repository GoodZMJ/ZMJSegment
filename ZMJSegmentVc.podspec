#
# Be sure to run `pod lib lint ZMJSegmentVc.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZMJSegmentVc'
  s.version          = '0.1.1'
  s.summary          = '一个选项卡控件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '选项卡控件,头部的条可以随着多个项目的位置而移动.使用的时候,只需要传入子控制器即可,头部条样式可以自定义'

  s.homepage         = 'https://github.com/609693897@qq.com/ZMJSegmentVc'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '609693897@qq.com' => 'you@example.com609693897@qq.com
git config --global user.email you@example.com609693897@qq.com' }
  s.source           = { :git => 'https://github.com/609693897@qq.com/ZMJSegmentVc.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZMJSegmentVc/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZMJSegmentVc' => ['ZMJSegmentVc/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
