#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Type" for configuration "Release"
set_property(TARGET Sofa.Type APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Type PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Type.so"
  IMPORTED_SONAME_RELEASE "libSofa.Type.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Type )
list(APPEND _cmake_import_check_files_for_Sofa.Type "${_IMPORT_PREFIX}/lib/libSofa.Type.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
