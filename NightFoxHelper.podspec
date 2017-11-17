Pod::Spec.new do |s|
  s.name             = 'NightFoxHelper'
  s.version          = '0.6.1'
  s.summary          = 'extensions summary.'

  s.description      = <<-DESC
Helper methods and extensions for development of my product.
                       DESC

  s.homepage         = 'https://github.com/noppefoxwolf/NightFoxHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tomoya Hirano' => 'cromteria@gmail.com' }
  s.source           = { :git => 'https://github.com/noppefoxwolf/NightFoxHelper.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/noppefoxwolf'

  s.ios.deployment_target = '9.0'

  s.source_files = 'NightFoxHelper/Classes/**/*'
end
