
Pod::Spec.new do |s|
  s.name             = 'AJKitSwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AJKitSwift.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xujiebing/AJKitSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xujiebing' => 'xujiebing1992@gmail.com' }
  s.source           = { :git => 'https://github.com/xujiebing/AJKitSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.default_subspec = 'Foundation'

  s.subspec 'Foundation' do |foundation|
    foundation.source_files = 'AJKitSwift/Classes/Foundation/*.swift'
  end
  
  s.subspec 'UIKit' do |kit|
    kit.source_files = 'AJKitSwift/Classes/UIKit/*.swift'
  end
  
  s.subspec 'App' do |app|
    app.source_files = 'AJKitSwift/Classes/App/*.swift'
  end
  
#  s.subspec 'Runtime' do |runtime|
#    runtime.source_files = 'AJKitSwift/Classes/Runtime/*.swift'
#  end
#  
#  s.subspec 'Algorithm' do |algorithm|
#    algorithm.source_files = 'AJKitSwift/Classes/Algorithm/*.swift'
#  end
  
end
