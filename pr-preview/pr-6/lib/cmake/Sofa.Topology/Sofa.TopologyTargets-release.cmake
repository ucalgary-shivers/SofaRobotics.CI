#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Topology" for configuration "Release"
set_property(TARGET Sofa.Topology APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Topology PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Topology.so"
  IMPORTED_SONAME_RELEASE "libSofa.Topology.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Topology )
list(APPEND _cmake_import_check_files_for_Sofa.Topology "${_IMPORT_PREFIX}/lib/libSofa.Topology.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
