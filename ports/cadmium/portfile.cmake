set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmium
    REF "v0.5.0"
    SHA512 66b80499a3095ba6e07c93a7b3868713d78a7e5a13d3ccdfdf294f174e0442064a90f9385145d18008bebf21e09a3392512484673629add44926973157071eb7
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
