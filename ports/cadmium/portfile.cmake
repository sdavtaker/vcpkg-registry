set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmium
    REF "v0.3.0"
    SHA512 0445bdf5fb50f7300ebcd486d5986002c6f492e90f8521db9302eb7261cbbc3891a9284870689a4702a14bcdfbb3bf54866023b250768a96d561f1c1909bf767
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DCADMIUM_BUILD_TESTS=OFF
        -DCADMIUM_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
