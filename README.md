MyTestApp contains an xcode project and podfiles for a blank app. The app does not need to do anything, the error we are seeing is at runtime when the app loads.

The podspec file found in the evergage-sdk-1.3.2 folder is currently trying to define vendored_frameworks as an XCFramework containing a dynamic framework (line 18). Line 19 is a commented out vendored_frameworks definition that uses a static xcframework. THe static framework is working as expected.