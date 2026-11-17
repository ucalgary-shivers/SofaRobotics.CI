#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Core" for configuration "Release"
set_property(TARGET Sofa.Core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Core PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Core.so"
  IMPORTED_SONAME_RELEASE "libSofa.Core.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Core )
list(APPEND _cmake_import_check_files_for_Sofa.Core "${_IMPORT_PREFIX}/lib/libSofa.Core.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
