set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmia
    REF "v0.4.3"
    SHA512 6ad42a9e469603fcad5b921ca82acd5f622df8b6df71019a57c9fdd82d2495037d499971768e41bdfc1a744f87ff82c101c781b5b4b5507696c69c1688279a86
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DCADMIA_BUILD_TESTS=OFF
        -DCADMIA_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
