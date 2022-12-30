#----------------------------------------------------------------
# Generated CMake target import file for configuration "TSAN".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "glog::glog" for configuration "TSAN"
set_property(TARGET glog::glog APPEND PROPERTY IMPORTED_CONFIGURATIONS TSAN)
set_target_properties(glog::glog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_TSAN "CXX"
  IMPORTED_LOCATION_TSAN "${_IMPORT_PREFIX}/lib/libglog.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS glog::glog )
list(APPEND _IMPORT_CHECK_FILES_FOR_glog::glog "${_IMPORT_PREFIX}/lib/libglog.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
