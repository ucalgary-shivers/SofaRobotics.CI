#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Framework" for configuration "Release"
set_property(TARGET Sofa.Framework APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Framework PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Framework.so"
  IMPORTED_SONAME_RELEASE "libSofa.Framework.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Framework )
list(APPEND _cmake_import_check_files_for_Sofa.Framework "${_IMPORT_PREFIX}/lib/libSofa.Framework.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
