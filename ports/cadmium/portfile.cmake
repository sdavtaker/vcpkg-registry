set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmium
    REF "v0.5.1"
    SHA512 d9b2489682792ad8023bf6a49235789f44475e75d2624ffcdcb64c66445c4e8d3bbac7dca18a66db974db32689223447da1b582d17c08da3de52495f0192aca2
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
