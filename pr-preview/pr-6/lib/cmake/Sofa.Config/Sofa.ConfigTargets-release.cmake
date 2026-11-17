#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Config" for configuration "Release"
set_property(TARGET Sofa.Config APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Config PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Config.so"
  IMPORTED_SONAME_RELEASE "libSofa.Config.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Config )
list(APPEND _cmake_import_check_files_for_Sofa.Config "${_IMPORT_PREFIX}/lib/libSofa.Config.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
