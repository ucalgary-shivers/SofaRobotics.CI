#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Collision.Response.Mapper" for configuration "Release"
set_property(TARGET Sofa.Component.Collision.Response.Mapper APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Collision.Response.Mapper PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Collision.Response.Mapper.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Collision.Response.Mapper )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Collision.Response.Mapper "${_IMPORT_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
