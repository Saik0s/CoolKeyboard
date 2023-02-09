import ProjectDescription

let packages: [Package] = [
]

let dependencies = Dependencies(
  swiftPackageManager: .init(packages),
  platforms: [.iOS]
)
