# Install script for directory: /workspaces/nativ/navit

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/i686-w64-mingw32-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/workspaces/nativ/win32/navit/navit.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/navit.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/navit.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/i686-w64-mingw32-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/navit.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/workspaces/nativ/win32/navit/CMakeFiles/navit.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit_layout_car.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit_layout_car_dark.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit_layout_car_android.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit_layout_car_simple.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit_layout_bike.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/workspaces/nativ/win32/navit/navit_layout_th.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/workspaces/nativ/win32/navit/support/ezxml/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/support/glib/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/support/zlib/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/support/libpng/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/support/wordexp/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/support/gettext_intl/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/support/win32/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/support/shapefile/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/binding/win32/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/speech/cmdline/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/graphics/null/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/osd/core/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/vehicle/demo/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/vehicle/file/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/gui/internal/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/map/binfile/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/map/filter/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/map/mg/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/map/shapefile/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/map/textfile/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/map/csv/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/traffic/dummy/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/traffic/null/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/graphics/win32/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/fib-1.1/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/maptool/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/icons/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/textures/cmake_install.cmake")
  include("/workspaces/nativ/win32/navit/maps/cmake_install.cmake")

endif()

