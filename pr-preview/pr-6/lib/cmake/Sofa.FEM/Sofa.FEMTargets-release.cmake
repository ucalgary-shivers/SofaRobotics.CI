#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.FEM" for configuration "Release"
set_property(TARGET Sofa.FEM APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.FEM PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.FEM.so"
  IMPORTED_SONAME_RELEASE "libSofa.FEM.so"
  )

list(APPEND _cmake_import_check_targets Sofa.FEM )
list(APPEND _cmake_import_check_files_for_Sofa.FEM "${_IMPORT_PREFIX}/lib/libSofa.FEM.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
