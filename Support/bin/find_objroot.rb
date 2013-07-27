#!/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby

require "#{ENV['TM_SUPPORT_PATH']}/lib/osx/plist"

result = %x{defaults read com.apple.Xcode PBXApplicationwideBuildSettings}
if $? == 0
	print OSX::PropertyList::load(result)["OBJROOT"].to_s
	exit(0)
else
	exit($?)
end