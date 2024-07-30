Pod::Spec.new do |spec|
  spec.name         = "ManiSDKIOS"
  spec.version      = "0.1.0"
  spec.summary      = "ManiSDKIOS is a auth sdk for Mani system, this is for flutter ios."
  spec.description  = <<-DESC
  ManiSDKIOS is a auth sdk for Mani system, this is for flutter ios.
  Mani SDK for IOS
                   DESC
  spec.homepage     = "https://github.com/sudo-ulmas/ManiSDKIOS"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Abdulloh Raxmatullaev" => "rakhmatullaevulmas@gmail.com" }
  spec.source       = { :git => "https://github.com/sudo-ulmas/ManiSDKIOS.git", :tag => '0.0.1' }
  spec.source_files  = "Classes", "ManiSDKIOS/Classes/*.{h,m,swift}"
  spec.exclude_files = 'Example'
  spec.dependency 'ManiSDK', '~> 0.3.0'
  spec.dependency 'MyIdSDK', '~> 2.2.9'
  spec.platform     = :ios, '12.0'
  spec.swift_version = '4.0'
end
