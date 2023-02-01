Pod::Spec.new do |spec|
  spec.name                  = "SwiftHTTPStatusCode"
  spec.version               = "0.0.1"
  spec.summary               = "Convenient enum for HTTP Status codes."
  spec.homepage              = "https://github.com/milkyNik/SwiftHTTPStatusCode"
  spec.license               = "MIT"
  spec.author                = "Nikita Milko"
  spec.source                = { :git => "https://github.com/milkyNik/SwiftHTTPStatusCode.git", :tag => spec.version }
  spec.social_media_url      = 'http://twitter.com/fxnik'
    
  spec.ios.deployment_target = "16.0"
  spec.osx.deployment_target = "13.0"
  
  spec.frameworks            = 'Foundation'
  spec.source_files          = 'Sources/*'

  spec.requires_arc          = true
end
