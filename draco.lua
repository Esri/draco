project "draco"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "0A414681-67D1-46F8-9405-94E446B301D3"

defines {
  "SAMPLE_DEFINE_PLEASE_REMOVE",
}

includedirs {
  "src",

  _3RDPARTY_DIR,
}

files {
  "src/draco/attributes/**.cc",
  "src/draco/compression/**.cc",
  "src/draco/core/**.cc",
  "src/draco/mesh/**.cc",
  "src/draco/metadata/**.cc",
  "src/draco/point_cloud/**.cc",
}

excludes {
  "**test.cc",
  "src/draco/core/draco_test_utils.cc",
}

if (_PLATFORM_ANDROID) then
  buildoptions {
    "-Wall",
    "-Wno-reorder",
    "-Wno-unknown-pragmas",
    "-Wno-undefined-inline",
    "-Wno-unused-variable",
  }
end

if (_PLATFORM_COCOA) then
  buildoptions {
    "-Wall",
    "-Wno-reorder",
    "-Wno-unknown-pragmas",
    "-Wno-undefined-inline",
    "-Wno-unused-variable",
  }
end

if (_PLATFORM_IOS) then
  buildoptions {
    "-Wall",
    "-Wno-reorder",
    "-Wno-unknown-pragmas",
    "-Wno-undefined-inline",
    "-Wno-unused-variable",
  }
end

if (_PLATFORM_LINUX) then
  buildoptions {
    "-Wall",
    "-Wno-reorder",
    "-Wno-unknown-pragmas",
    "-Wno-undefined-inline",
    "-Wno-unused-variable",
  }
end

if (_PLATFORM_MACOS) then
  buildoptions {
    "-Wall",
    "-Wno-reorder",
    "-Wno-unknown-pragmas",
    "-Wno-undefined-inline",
    "-Wno-unused-variable",
  }
end

if (_PLATFORM_WINDOWS) then
  defines {
    "_PPLTASK_ASYNC_LOGGING=0",
  }

  files {
  }

  excludes {
  }
end

if (_PLATFORM_WINUWP) then
  buildoptions {
    "/ZW",
    "/AI\"$(VCIDEInstallDir)vcpackages\"",
    "/AI\"$(WindowsSDK_UnionMetadataPath)\"",
  }

  files {
  }

  excludes {
  }
end
