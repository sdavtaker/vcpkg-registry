set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cadmia
    REF "v0.4.5"
    SHA512 1f260e80b3e95e9d6f5fccf80f38988182c1a69e5938a5d4a46a606fdd2ca84c416d4619c9b653209e5cd75b24a7ced108a6d73a839316f33bbb241641c881a4
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
