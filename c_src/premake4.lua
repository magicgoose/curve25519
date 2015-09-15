#!lua
solution "curve25519"
    configurations { "Release" }
    project "curve25519-cli"
        kind "ConsoleApp"
        language "C"
        files { "**.h", "**.c" }
        excludes { "**/curve25519_donna_nif.c", "**/curve25519_nif.c", "**/curve25519-donna.c"}
        configuration "Release"
            defines { "NDEBUG" }
            flags { "Optimize" }