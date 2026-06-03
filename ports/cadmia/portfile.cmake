set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmia
    REF "v0.4.0"
    SHA512 704dc78496516d1c802f594fd2c3e04efc510325cd30979f1715cb51b64d1ef730fdb039f3815c274b61562b23752e784f1878ba2b7e2f13082b69e54d0c51a0
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
