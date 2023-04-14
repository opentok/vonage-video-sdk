# OpenTok iOS SDK (Swift Package Manager)

The OpenTok iOS SDK lets you use OpenTok-powered video sessions in apps
you build for iPad, iPhone, and iPod touch devices.

All OpenTok applications are composed of two parts:

* The client-side, which uses the [OpenTok client
  SDKs](https://tokbox.com/developer/sdks/client/) and runs in a user's
  browser or mobile app
* The server-side, which uses the [OpenTok server
  SDKs](https://tokbox.com/developer/sdks/server/) and runs on your server
  to pass authentication information to the client.

The client SDK for building iOS apps is the OpenTok iOS SDK, which provides
most of the core functionality for your app, including:

* Connecting to an OpenTok session
* Publishing streams to a session
* Subscribing to streams in a session

Client SDKs are also available for
[Android](https://tokbox.com/developer/sdks/android/) and
[web](https://tokbox.com/developer/sdks/js/). All OpenTok client SDKs can interact with one another.

You can learn more about the basics of OpenTok clients, servers, sessions, and
more on the [OpenTok Basics](https://tokbox.com/developer/guides/basics/) page.

Learning to build with the OpenTok iOS SDK
------------------------------------------

The best way to learn how to use the OpenTok iOS SDK is to follow the OpenTok
[Basic Video Chat tutorial](https://tokbox.com/developer/tutorials/ios/).

Once you understand the basics of building with the OpenTok iOS SDK, you
can get more detailed information and learn how to customize your application
with the OpenTok [developer guides](https://tokbox.com/developer/guides).
To investigate specific API classes and methods, see the [OpenTok iOS SDK API
reference](https://tokbox.com/developer/sdks/ios/reference/).

Code samples
------------

For samples using Swift, visit our [Swift sample app
repo](https://github.com/opentok/opentok-ios-sdk-samples-swift)
on GitHub.

For samples using Objective-C, visit our [Objective-C sample app
repo](https://github.com/opentok/opentok-ios-sdk-samples)
on GitHub.

Interoperability
----------------

Apps written with the OpenTok iOS SDK 2.25.0 can interoperate with OpenTok apps
written with version 2.23+ of the OpenTok client SDKs:

* OpenTok.js
* OpenTok Android SDK
* OpenTok iOS SDK
* OpenTok macOS SDK
* OpenTok Windows SDK
* OpenTok Linux SDK

Using the SDK
-------------

The OpenTok.xcframework directory contains the OpenTok iOS SDK.

The OpenTok iOS SDK is available as [Swift Package Manager](https://github.com/opentok/sdk-ios-spm), 
or the Pod "OpenTok" for use with [CocoaPods](http://cocoapods.org/).

## Swift Package Manager
You can add the iOS OpenTok SDK by adding the https://github.com/opentok/sdk-ios-spm repository as a Swift Package Dependency.
To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter its repository URL

The OpenTok iOS SDK requires Xcode 7 or higher.

The OpenTok iOS SDK requires the following frameworks and libraries:

* AudioToolbox.framework
* AVFoundation.framework
* CoreGraphics.framework
* CoreMedia.framework
* CoreTelephony.framework
* CoreVideo.framework
* Foundation.framework
* GLKit.framework
* libc++.dylib (libc++.tbd in Xcode 7+)
* libsqlite3.dylib (libsqlite3++.tbd in Xcode 7+)
* Metal.framework
* MetalKit.framework
* MetalPerformanceShaders.framework
* OpenGLES.framework
* QuartzCore.framework
* SystemConfiguration.framework
* UIKit.framework
* VideoToolbox.framework

The OpenTok iOS SDK links to the libc++ standard library. If another library
that links to the libc++ standard library was compiled in a version of Xcode
older than 6.0.0, it may result in segfaults at run time when using it with the
OpenTok iOS SDK. Known incompatible libraries include, but are not limited to,
Firebase (versions earlier than 2.1.2 -- see
https://code.google.com/p/webrtc/issues/detail?id=3992) and Google Maps
(versions earlier than 1.9.0). To fix this issue, download a version of the
other library that was compiled using XCode 6.0.0 or later.

In order to access the camera and microphone, iOS 10 requires you to set values
for the `NSCameraUsageDescription` and `NSMicrophoneUsageDescription` keys in
the Info.plist file. These define strings that appear in the app installer to
inform the user why your app uses the camera and microphone. For more
information see [the Apple documentation on Cocoa
keys](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html).

See the [release notes](release-notes.md) for information on the latest version
of the SDK and for a list of known issues.

See [this document](http://tokbox.com/developer/sdks/ios/background-state.html)
for information on using the SDK in apps running in the background mode.

System requirements
-------------------

The OpenTok iOS SDK is supported on the following devices:

* iPhone -- iPhone 5s and later

* iPad -- iPad Pro 1st generation and later, iPad (2017), iPad Air (all models),
  iPad 4th generation, iPad mini 2 and later

* iPod touch 6th generation and later

The OpenTok iOS SDK is supported in iOS 13 or higher.

The OpenTok iOS SDK is supported on Wi-Fi, 4G/LTE, and 5G connections.

The OpenTok iOS SDK supports one published audio-video stream, one
subscribed audio-video stream, and up to three additional subscribed
audio-only streams simultaneously on the iPhone 5s (the lowest-end
device supported). On the iPhone 7, tests have shown support for
subscribing to as many as 20 simultaneous low-resolution (200x200-pixel,
15-frame-per-second) streams. To connect more than two clients in a
session using the OpenTok iOS SDK, create a session that uses the OpenTok
Media Router (a session with the media mode set to routed). See
[The OpenTok Media Router and media
modes](http://tokbox.com/developer/guides/create-session/#media-mode).

Documentation
-------------

Reference documentation is included in the doc subdirectory of the SDK and at
<http://www.tokbox.com/developer/sdks/ios/reference/index.html>.

More information
-----------------

For a list of new features and known issues, see the [release notes](release-notes.md).

