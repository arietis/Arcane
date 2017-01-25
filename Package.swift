import PackageDescription

let package = Package(
    name: "Arcane",
    dependencies: [
      .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 5),
      .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", majorVersion: 1, minor: 5)
    ]
)
