set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cdboost
    REF "v0.3.2"
    SHA512 2fcfda5dcebd311ba5caa00057afca30442439d80c9f51f27a5e2c3dfff0d15969d2624cb4dbb3d85d24496ffd8a0932c72c55c532ea555e16ffd8de7e97a369
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DCDBOOST_BUILD_TESTS=OFF
        -DCDBOOST_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
