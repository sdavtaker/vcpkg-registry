set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cdcommons
    REF "v0.1.0"
    SHA512 68b668082f0c801e195e93d946d3605afcb52850e82b4b0d0d3332dab83a61fac5191a37f0ae444709cd950f840abf888b6838dbe540802fc42a00d92f2aa8f0
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_integration()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
