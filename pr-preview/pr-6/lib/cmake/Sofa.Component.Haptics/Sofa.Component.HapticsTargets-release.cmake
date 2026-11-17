#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Haptics" for configuration "Release"
set_property(TARGET Sofa.Component.Haptics APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Haptics PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Haptics.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Haptics.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Haptics )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Haptics "${_IMPORT_PREFIX}/lib/libSofa.Component.Haptics.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
