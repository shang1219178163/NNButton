#

Pod::Spec.new do |s|
  s.name             = 'NNButton'
  s.version          = '2.0.0'
  s.summary          = 'NSButton Subclass'
  s.description      = 'macOS NSButton custom，like UIButton.'

  s.homepage         = 'https://github.com/shang1219178163/NNButton'
  s.screenshots      = 'https://github.com/shang1219178163/NNButton/blob/master/screenshots/screenshots.jpeg?raw=true'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shang1219178163' => 'shang1219178163@gmail.com' }
  s.source           = { :git => 'https://github.com/shang1219178163/NNButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :osx,"10.13"
  s.requires_arc = true
  
  s.source_files = 'NNButton/Classes/**/*'

  # s.resource_bundles = {
  #   'NNButton' => ['NNButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  # s.dependency 'AFNetworking', '~> 2.3'
end
