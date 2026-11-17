#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Engine.Analyze" for configuration "Release"
set_property(TARGET Sofa.Component.Engine.Analyze APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Engine.Analyze PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Engine.Analyze.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Engine.Analyze.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Engine.Analyze )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Engine.Analyze "${_IMPORT_PREFIX}/lib/libSofa.Component.Engine.Analyze.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
