load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "HashtagSearchUI",
    module_name = "HashtagSearchUI",
    srcs = glob([
		"Sources/**/*.swift",
    ]),
    deps = [
        "//submodules/SSignalKit/SwiftSignalKit:SwiftSignalKit",
        "//submodules/AsyncDisplayKit:AsyncDisplayKit",
        "//submodules/Display:Display",
        "//submodules/Postbox:Postbox",
        "//submodules/TelegramCore:TelegramCore",
        "//submodules/TelegramPresentationData:TelegramPresentationData",
        "//submodules/AccountContext:AccountContext",
        "//submodules/TelegramBaseController:TelegramBaseController",
        "//submodules/ChatListUI:ChatListUI",
        "//submodules/SegmentedControlNode:SegmentedControlNode",
        "//submodules/ListMessageItem:ListMessageItem",
    ],
    visibility = [
        "//visibility:public",
    ],
)
