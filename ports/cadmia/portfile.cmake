set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmia
    REF "v0.4.4"
    SHA512 149d38cbee45d029b2dffd61da29d49cb90c89dd07cec57daa488ddd3829df573dbdfc16b4fc9a0810be96956a4a5b7a9b7d9bb19648b77c97f78a0c85e0a744
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
