#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Engine.Generate" for configuration "Release"
set_property(TARGET Sofa.Component.Engine.Generate APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Engine.Generate PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Engine.Generate.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Engine.Generate.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Engine.Generate )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Engine.Generate "${_IMPORT_PREFIX}/lib/libSofa.Component.Engine.Generate.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
