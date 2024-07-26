Pod::Spec.new do |spec|
  spec.name         = "ManiSDKIOS"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of ManiSDKIOS."
  spec.description  = <<-DESC
  Mani SDK for IOS
                   DESC
  spec.homepage     = "http://EXAMPLE/ManiSDKIOS"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Abdulloh Raxmatullaev" => "rakhmatullaevulmas@gmail.com" }
  spec.source       = { :git => "https://github.com/sudo-ulmas/ManiSDKIOS" }
  spec.source_files  = "Classes", "ManiSDKIOS/Classes/*.{h,m,swift}"
  spec.exclude_files = 'Example'
  spec.dependency 'ManiSDK', '~> 0.3.0'
  spec.dependency 'MyIdSDK', '~> 2.2.9'
  spec.platform     = :ios, '12.0'
end
