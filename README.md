## Steps to Create and Distribute XCFramework with Required 3rd Party Libraries

### 1. Create Project
- Open Xcode and create a new project.
- Choose **Framework** as the project template.

### 2. Add SDK Implementation
- Add your SDK implementation code to the project.
- Set the project deployment target as required.
- Ensure the following build setting is enabled: 
  `BUILD_LIBRARIES_FOR_DISTRIBUTION = YES`

### 3. Add 3rd Party Libraries
- Use CocoaPods to manage 3rd party libraries:
  ```bash
  pod init
  ```
- Add the required libraries to the `Podfile` and run:
  ```bash
  pod install
  ```

### 4. Export the XCFramework
- Use the following commands to build and export the XCFramework:

#### Build for Simulator:
```bash
xcodebuild archive -workspace SampleSDK.xcworkspace \
 -scheme SampleSDK \
 -archivePath ~/Desktop/SampleSDK-iphonesimulator.xcarchive \
 -sdk iphonesimulator \
 SKIP_INSTALL=NO \
 BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
```

#### Build for Device:
```bash
xcodebuild archive -workspace SampleSDK.xcworkspace \
 -scheme SampleSDK \
 -archivePath ~/Desktop/SampleSDK-iphoneos.xcarchive \
 -sdk iphoneos \
 SKIP_INSTALL=NO \
 BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
```

#### Combine into XCFramework:
```bash
xcodebuild -create-xcframework \
 -framework ~/Desktop/SampleSDK-iphonesimulator.xcarchive/Products/Library/Frameworks/SampleSDK.framework \
 -framework ~/Desktop/SampleSDK-iphoneos.xcarchive/Products/Library/Frameworks/SampleSDK.framework \
 -output ~/Desktop/SampleSDK.xcframework
```

### 5. Push the XCFramework to Repository
- Push the XCFramework to your desired repository.
- Create a podspec file:
  ```bash
  pod spec create YourPodName
  ```

### 6. Configure Podspec
- Refer to a sample podspec for proper configuration.
- Add required 3rd party libraries under `s.dependency`.
- Include the uploaded XCFramework zip file link in `s.source`.

### 7. Release the Podspec
- Add a version tag and release the podspec.

### 8. Install the SDK in a Project
- Add the following to the project’s `Podfile`:
  ```ruby
  pod 'SampleSDK', :git => 'https://github.com/aiaagentapp/SampleSDK.git'
  ```

### 9. Verify Installation
- Run `pod install`.
- The XCFramework along with the required 3rd party libraries will be installed and ready to use.
