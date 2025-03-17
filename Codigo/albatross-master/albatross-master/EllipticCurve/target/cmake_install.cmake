# Install script for directory: /mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic" TYPE FILE FILES
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_alloc.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_arch.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_bc.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_bench.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_bn.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_core.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_cp.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_dv.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_eb.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_ec.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_ed.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_ep.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_epx.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_err.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_fb.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_fbx.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_fp.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_fpx.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_label.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_md.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_mpc.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_multi.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_pc.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_pp.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_rand.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_test.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_types.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/relic_util.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic/low" TYPE FILE FILES
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/low/relic_bn_low.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/low/relic_dv_low.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/low/relic_fb_low.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/low/relic_fp_low.h"
    "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/include/low/relic_fpx_low.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic" TYPE DIRECTORY FILES "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/target/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/relic/cmake/relic-config.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/target/src/cmake_install.cmake")
  include("/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/target/test/cmake_install.cmake")
  include("/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/target/bench/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/mnt/c/Users/nicol/Desktop/TFG/WS_PSI/Codigo/albatross-master/albatross-master/EllipticCurve/target/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
