include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT navi1301@gmail.com)
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "test")
set(CPACK_SOURCE_IGNORE_FILES 
"\\\\.cmake;/build/;/.git/;/.github/")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "${CMAKE_SOURCE_DIR}; /")
set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")
set(CPACK_DEBIAN_PACKAGE_NAME "solver")
set(CPACK_DEBIAN_FILE_NAME "solver-${PRINT_VERSION}.deb")
set(CPACK_DEBIAN_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "all")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Tocsaine.")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)


set(CPACK_GENERATOR "${CPACK_GENERATOR};RPM")


set(CPACK_RPM_FILE_NAME "solver-${PRINT_VERSION}-${CPACK_RPM_PACKAGE_RELEASE}.${CPACK_RPM_PACKAGE_ARCHITECTURE}.rpm")
set(CPACK_RPM_PACKAGE_SUMMARY "My solver package")
set(CPACK_RPM_PACKAGE_DESCRIPTION "This package provides a solver for complex problems.")
set(CPACK_RPM_PACKAGE_REQUIRES "libboost-dev, libxml2-dev")

include(CPack)
