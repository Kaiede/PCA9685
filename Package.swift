// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "PCA9685",
    dependencies: [
    	// This uses a fork for the time being. 
        .Package(url: "https://github.com/uraimo/SwiftyGPIO.git", majorVersion: 1),
    ],
    swiftLanguageVersions: [3, 4]
)
