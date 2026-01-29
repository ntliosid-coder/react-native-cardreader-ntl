

require 'json'

package = JSON.parse(File.read(File.join(__dir__, './package.json')))

Pod::Spec.new do |s|
  s.name         = "RCTNtlCardReader"
  s.version      = package['version']
  s.summary      = "RCTNtlCardReader"
  s.license      = "MIT"

  s.authors      = package['author']
  s.homepage     = "https://github.com/ntliosid-coder/react-native-ntl-cardreader#readme"
  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/ntliosid-coder/react-native-ntl-cardreader.git", :tag => "master" }
  s.source_files  = "RCTNtlCardReader/*.{h,m}", "RCTNtlCardReader/Lib/include/*.h"
  s.dependency 'React-Core'
  
  s.requires_arc = true
  s.vendored_library = 'RCTNtlCardReader/Lib/lib/libiRockey301_ccid_V3.5.61_debug.a'
  s.vendored_library = 'RCTNtlCardReader/Lib/lib/libiRockey301_ccid_V3.5.61_release.a'
end

