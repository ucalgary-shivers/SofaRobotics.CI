#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.AnimationLoop" for configuration "Release"
set_property(TARGET Sofa.Component.AnimationLoop APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.AnimationLoop PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.AnimationLoop.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.AnimationLoop.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.AnimationLoop )
list(APPEND _cmake_import_check_files_for_Sofa.Component.AnimationLoop "${_IMPORT_PREFIX}/lib/libSofa.Component.AnimationLoop.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
