Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.1'
s.name = "PocIos"
s.summary = "PocIos create pod."
s.requires_arc = true

# 2
s.version = "0.0.3"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author             = { "Ajay" => "ajay@appringer.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/arhirapara76/PocPod"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/arhirapara76/PocPod.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"

# 8
#s.source_files = "PocIos/**/*.{h,m,swift}"
s.source_files = "PocPod", "PocIos/**/*.{swift}"

# 9
#s.resources = "PocIos", "RemoteLoggeriOS/*.{storyboard,xib}"

# 10
s.swift_version = "5.0"

end
