# Helper macro to add a "doc" target with CMake build system.
# and configure doxy.config.in to doxy.config
#
# Please note, that the tools, e.g.:
# doxygen, dot, latex, dvips, makeindex, gswin32, etc.
# must be in path.
#
# adapted from work of Jan Woetzel 2004-2006
# www.mip.informatik.uni-kiel.de/~jw

find_package(Doxygen)
message(STATUS "CMAKE_CURRENT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}")

if (DOXYGEN_FOUND)
  if (OPSYS STREQUAL "MACOSX")
    set(GENERATE_DOCSET "YES")
  else (OPSYS STREQUAL "MACOSX")
    set(GENERATE_DOCSET "NO")
  endif (OPSYS STREQUAL "MACOSX")
	if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/doc/relic.doxygen.in")
		message(STATUS "Configured ${CMAKE_CURRENT_SOURCE_DIR}/doc/relic.doxygen.in")
		configure_file(${CMAKE_CURRENT_SOURCE_DIR}/doc/relic.doxygen.in
			${CMAKE_CURRENT_BINARY_DIR}/doc/relic.doxygen @ONLY )
		# use config from BUILD tree
		set(DOXY_CONFIG "${CMAKE_CURRENT_BINARY_DIR}/doc/relic.doxygen")
	else (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/doc/relic.doxygen.in")
		# use config from SOURCE tree
		if (EXISTS "${PROJECT_SOURCE_DIR}/doxy.config.in")
 			 set(CONFIG_FILE "${PROJECT_SOURCE_DIR}/doxy.config.in")
		else()
			 message(FATAL_ERROR "No se encontró la plantilla de doxygen en relic/doxy.config.in")
		endif()


	endif(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/doc/relic.doxygen.in")

	add_custom_target(doc ${DOXYGEN_EXECUTABLE} ${DOXY_CONFIG})

endif(DOXYGEN_FOUND)
