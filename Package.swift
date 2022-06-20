// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MIKMIDI",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MIKMIDI",
            targets: ["MIKMIDI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MIKMIDI",
            path: "Source",
            exclude: ["MIKMIDI.h",
                      "MIKMIDIPrivate.h",
                      "MIKMIDIObject_SubclassMethods.h",
                      "MIKMIDIPort_SubclassMethods.h",
                      "MIKMIDIChannelVoiceCommand_SubclassMethods.h",
                      "MIKMIDIControlChangeCommand+Private.h",
                      "MIKMIDIChannelVoiceCommand_SubclassMethods.h",
                      "MIKMIDIMappingXMLParser.h",
                      "MIKMIDISequence+MIKMIDIPrivate.h",
                      "MIKMIDITrack_Protected.h",
                      "MIKMIDITempoTrack.h",
                      "MIKMIDIEventIterator.h",
                      "MIKMIDISequencer+MIKMIDIPrivate.h",
                      "MIKMIDIPrivateUtilities.h"
                     ],
            publicHeadersPath: ".",
            cSettings: [.define("SWIFTPM")]
            //    sources: ["Source/**/*.m"]
        )
    ]
)
