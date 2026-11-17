#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.IO.Mesh" for configuration "Release"
set_property(TARGET Sofa.Component.IO.Mesh APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.IO.Mesh PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.IO.Mesh.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.IO.Mesh.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.IO.Mesh )
list(APPEND _cmake_import_check_files_for_Sofa.Component.IO.Mesh "${_IMPORT_PREFIX}/lib/libSofa.Component.IO.Mesh.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
