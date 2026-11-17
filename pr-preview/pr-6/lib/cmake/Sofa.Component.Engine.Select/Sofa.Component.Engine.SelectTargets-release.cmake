#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Engine.Select" for configuration "Release"
set_property(TARGET Sofa.Component.Engine.Select APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Engine.Select PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Engine.Select.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Engine.Select.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Engine.Select )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Engine.Select "${_IMPORT_PREFIX}/lib/libSofa.Component.Engine.Select.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
