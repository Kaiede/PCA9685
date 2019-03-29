// swift-tools-version:3.1

import PackageDescription

//
// Backport of Package(url:from:)
//
extension Package.Dependency {
    public class func Package(url: String, from versionString: String) -> Package.Dependency {
        guard let version = Version(versionString) else { fatalError() }
        let nextMajor = Version(version.major + 1, 0, 0)
        return Package(url: url, versions: version..<nextMajor)
    }
}

let package = Package(
    name: "PCA9685",
    dependencies: [
        .Package(url: "https://github.com/Kaiede/SingleBoard.git", from: "1.0.0"),
    ],
    swiftLanguageVersions: [3, 4]
)
