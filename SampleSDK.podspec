Pod::Spec.new do |s|
  s.name         = 'SampleSDK'
  s.version      = '0.0.5'
  s.summary      = 'A private framework for internal use.'
  s.description  = <<-DESC
                    A longer description of MyFramework for private distribution.
                    DESC
  s.homepage     = 'https://example.com'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Your Name' => 'your.email@example.com' }
  s.source       = { :http => 'https://github.com/aiaagentapp/SampleSDK/archive/refs/tags/0.0.5.zip' }
  s.vendored_frameworks = 'SampleSDK.xcframework'
  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'
  s.requires_arc = true
  s.dependency 'Alamofire'
end
