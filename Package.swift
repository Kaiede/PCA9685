// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "PCA9685",
    dependencies: [
    	// We need to use the fork for now. Sorry
    	// A workaround for projects like RPiLight that depend on the fork.
    	// Swift 4 doesn't have this problem, but Swift 3.1.1 does. 
        .Package(url: "https://github.com/Kaiede/SwiftyGPIO.git", majorVersion: 1),
    ],
    swiftLanguageVersions: [3, 4]
)
