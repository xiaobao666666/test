

Pod::Spec.new do |s|
  s.name             = 'XJJTools'
  s.version          = '0.0.1'
  s.summary          = '工具类'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xiaobao666666/test'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiaojiabao' => 'xiaojiabao@bianfeng.com' }
  s.source           = { :git => 'https://github.com/xiaobao666666/test.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'XJJTools/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'XJJTools' => ['XJJTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
