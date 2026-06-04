set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmium
    REF "v0.3.1"
    SHA512 7d5c608014cd06261cfb78430889db050e2dd62cce30db0045d0203afe41ca3205266bda32c9279e28a9522de70b4020c90be04d857c754495f98a838e4cff1c
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
