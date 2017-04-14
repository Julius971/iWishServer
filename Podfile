source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!
platform :ios, ‘8.0’

abstract_target ‘iWishServer’ do
    #pod "VISPER", "~> 0.3.8"
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
