vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO yobeonline/io1-money
    REF 0.1.0
    SHA512 9dc0a4cf8f1b9acc5ffdc08ca1241343d715423083696edd810602adfda4b4266d817ccecc25417250ecaaa9eb590a1f76a79a846b88915b4437bcde16ac30b3
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS -DIO1_WITH_TESTS=OFF
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
