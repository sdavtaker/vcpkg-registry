set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sdavtaker/cdboost
    REF "v0.3.3"
    SHA512 bf1043ee9705f22684689c1ac05391da1108843081a0859b9c5d3b6f4105d819785eed0229b428a9f5fb0398d5ef908830fc37504dbcbd4a5f5920b182a5d6fd
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
