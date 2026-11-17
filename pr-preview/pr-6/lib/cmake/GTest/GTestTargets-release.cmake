#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gtest" for configuration "Release"
set_property(TARGET gtest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gtest PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgtest.so.1.14.0"
  IMPORTED_SONAME_RELEASE "libgtest.so.1.14.0"
  )

list(APPEND _cmake_import_check_targets gtest )
list(APPEND _cmake_import_check_files_for_gtest "${_IMPORT_PREFIX}/lib/libgtest.so.1.14.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
