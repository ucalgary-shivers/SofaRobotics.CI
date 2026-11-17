#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component" for configuration "Release"
set_property(TARGET Sofa.Component APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component )
list(APPEND _cmake_import_check_files_for_Sofa.Component "${_IMPORT_PREFIX}/lib/libSofa.Component.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
