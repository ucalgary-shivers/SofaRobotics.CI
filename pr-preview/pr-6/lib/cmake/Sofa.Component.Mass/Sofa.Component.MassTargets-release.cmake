#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Mass" for configuration "Release"
set_property(TARGET Sofa.Component.Mass APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Mass PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Mass.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Mass.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Mass )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Mass "${_IMPORT_PREFIX}/lib/libSofa.Component.Mass.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
