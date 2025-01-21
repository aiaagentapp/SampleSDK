Pod::Spec.new do |s|  
    s.name              = 'SampleSDK' # Name for your pod
    s.version           = '0.0.1'
    s.summary           = 'Sample Spec'
    s.homepage          = 'https://www.google.com'

    s.author            = { 'Sample' => 'sample@sample.com' }
    s.license = { :type => "MIT", :text => "MIT License" }

    s.platform          = :ios
    # change the source location
    s.source            = { :http => 'https://github.com/aiaagentapp/SampleSDK.git' } 
    s.ios.deployment_target = '16.0'
    s.ios.vendored_frameworks = 'SampleSDK.xcframework' # Your XCFramework
    s.dependency 'Alamofile', '5.10.2' # Third Party Dependency
end 
