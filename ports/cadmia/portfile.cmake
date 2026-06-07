set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmia
    REF "v0.4.1"
    SHA512 aca50bffb9b3f26592ccdb0639e24ad9c0169063dfd86cc4a16114897be0a4e61d27249eb35fcf71af976ca0594584c7498ed37e12a37464f6c5b4bce2ece931
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
