#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.SceneUtility" for configuration "Release"
set_property(TARGET Sofa.Component.SceneUtility APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.SceneUtility PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.SceneUtility.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.SceneUtility.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.SceneUtility )
list(APPEND _cmake_import_check_files_for_Sofa.Component.SceneUtility "${_IMPORT_PREFIX}/lib/libSofa.Component.SceneUtility.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
