
Pod::Spec.new do |s|
  s.name             = 'ZMJSegmentVc'
  s.version          = '0.1.0'
  s.summary          = '一个选项卡控件.'

  s.homepage         = 'https://github.com/GoodZMJ'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张小凡' => '609693897@qq.com'}
  s.source           = { :git => 'https://github.com/GoodZMJ/ZMJSegment.git', :tag => s.version.to_s }

  s.description      = '选项卡控件,头部的条可以随着多个项目的位置而移动.使用的时候,只需要传入子控制器即可,头部条样式可以自定义.欢迎您的指导,要是有帮助.记得帮忙点个星星哈.谢谢'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZMJSegmentVc/Classes/**/*'

end
