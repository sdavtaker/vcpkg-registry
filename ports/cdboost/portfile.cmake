set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cdboost
    REF "v0.3.1"
    SHA512 d903e4c90004ccc8972eec9a8119c3626924a263b6173299b0aa1b5a0a76922981a157d7b2b07f8ea5e8b871c0d5bc82b8d1bde2d49502e1fde427fd78f63ed7
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
