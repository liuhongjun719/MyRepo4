#
#  Be sure to run `pod spec lint CookieUtil.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "CookieUtil"
  s.version      = "0.0.9"
  s.summary      = "设置缓存策略和清空cookie"
  s.description  = <<-DESC
设置缓存策略和清空cookie，分别在项目启动和退出时进行设置
                   DESC
  s.homepage     = "https://github.com/liuhongjun719/CookieUtil"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "liuhongjun" => "357213063@qq.com" }
  s.source       = { :git => "https://github.com/liuhongjun719/CookieUtil.git", :tag => "#{s.version}" }
  s.source_files  = "CookieUtil/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.dependency 'MJRefresh'
  s.ios.deployment_target = "8.0"

  s.subspec 'HJUtil' do |ss|
    ss.source_files  = "CookieUtil/Util/*.{h,m}"
    ss.public_header_files = 'CookieUtil/Util/HJUtil.h'
  end

  s.subspec 'Router' do |ss|
    ss.source_files  = "CookieUtil/Router/*.{h,m}"
    ss.public_header_files = 'CookieUtil/Router/HJRouter.h'
  end

end
