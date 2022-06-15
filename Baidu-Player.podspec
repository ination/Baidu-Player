Pod::Spec.new do |s|

  s.name         = 'Baidu-Player-Full'
  s.version      = '2.3.6'
  s.summary      = 'Baidu Cloud iOS Player Full SDK'
  s.homepage     = 'https://cloud.baidu.com/doc/MCT/s/qjwvz50w7/'
  s.license      = {
    :type => 'Proprietary',
    :text => <<-LICENSE
         Copyright (c) 2018 Baidu.com, Inc. All Rights Reserved.
         LICENSE
  }
  s.description  = <<-DESC
    Baidu Cloud iOS Player SDK supoort iOS 8.0 and later,
  DESC
  s.author   =   { 'Baidu Cloud Multimedia Team' => 'bce-multimedia@baidu.com' }
  s.source   =   { :http => 'https://sdk.bce.baidu.com/media-sdk/Baidu-Cloud-Player-iOS-Full-v2.3.6.zip'}
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.prepare_command = 'rm -rf vendor/libssl.a vendor/libcrypto.a'

  s.vendored_libraries = 'vendor/libffmpeg.a'
  s.vendored_frameworks = 'frameworks/BDCloudMediaUtils.framework', 'frameworks/BDCloudMediaPlayer.framework', 'frameworks/BDCloudMediaDownloader.framework', 'frameworks/BDCloudMediaSource.framework', 'frameworks/BDCloudMediaSprite.framework', 'frameworks/BDCloudMediaAdaptive.framework', 'frameworks/BaiduAPMAgent.framework'
  s.frameworks = 'Foundation', 'UIKit', 'AudioToolbox'
  s.dependency 'openssl-ios-bitcode', '~> 1.0.210'
  s.libraries = 'bz2', 'z', 'c++'
end
