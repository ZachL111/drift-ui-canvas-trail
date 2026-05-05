package = "drift-ui-canvas-trail"
version = "0.1-1"
source = { url = "." }
description = { summary = "Develop a Lua command-oriented project for canvas scenarios with framed sample traffic, bounds and ordering tests, and no credentials or hosted services.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
