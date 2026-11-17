#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Topology.Container.Dynamic" for configuration "Release"
set_property(TARGET Sofa.Component.Topology.Container.Dynamic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Topology.Container.Dynamic PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Topology.Container.Dynamic.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Topology.Container.Dynamic.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Topology.Container.Dynamic )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Topology.Container.Dynamic "${_IMPORT_PREFIX}/lib/libSofa.Component.Topology.Container.Dynamic.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
