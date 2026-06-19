set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmium
    REF "v0.4.2"
    SHA512 6679a775e2bf902aaf2720cb692e6d43d570b1d8bafb8fd300fe39ce99f3c95d5f482a5d5950515f59559e7d2017886b3b8f7210d9ec11374f64270a8ec9a644
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
