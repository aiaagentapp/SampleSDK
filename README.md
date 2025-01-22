# SampleSDK

xcodebuild archive -workspace SampleSDK.xcworkspace\
 -scheme SampleSDK \
 -archivePath ~/Desktop/SampleSDK-iphonesimulator.xcarchive \
 -sdk iphonesimulator \
 SKIP_INSTALL=NO


xcodebuild archive -workspace SampleSDK.xcworkspace\
 -scheme SampleSDK \
 -archivePath ~/Desktop/SampleSDK-iphoneos.xcarchive \
 -sdk iphoneos \
 SKIP_INSTALL=NO

xcodebuild -create-xcframework \
 -framework ~/Desktop/SampleSDK-iphonesimulator.xcarchive/Products/Library/Frameworks/SampleSDK.framework \
 -framework ~/Desktop/SampleSDK-iphoneos.xcarchive/Products/Library/Frameworks/SampleSDK.framework \
 -output ~/Desktop/SampleSDK.xcframework
