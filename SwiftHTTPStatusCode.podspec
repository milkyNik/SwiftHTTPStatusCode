Pod::Spec.new do |spec|
  spec.name                  = "SwiftHTTPStatusCode"
  spec.version               = "0.0.2"
  spec.summary               = "Convenient enum for HTTP Status codes."
  spec.homepage              = "https://github.com/milkyNik/SwiftHTTPStatusCode"
  spec.license               = "MIT"
  spec.author                = "Nikita Milko"
  spec.source                = { :git => "https://github.com/milkyNik/SwiftHTTPStatusCode.git", :tag => spec.version }
  spec.social_media_url      = 'http://twitter.com/fxnik'
    
  spec.swift_versions = ['4.0', '4.2', '5.0']
  
  spec.ios.deployment_target = "15.0"
  spec.osx.deployment_target = "12.0"
  
  spec.frameworks            = 'Foundation'
  spec.source_files          = 'Sources/*'

  spec.requires_arc          = true
end
