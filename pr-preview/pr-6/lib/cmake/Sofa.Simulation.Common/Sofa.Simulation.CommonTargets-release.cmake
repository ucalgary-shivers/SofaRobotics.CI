#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Simulation.Common" for configuration "Release"
set_property(TARGET Sofa.Simulation.Common APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Simulation.Common PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Simulation.Common.so"
  IMPORTED_SONAME_RELEASE "libSofa.Simulation.Common.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Simulation.Common )
list(APPEND _cmake_import_check_files_for_Sofa.Simulation.Common "${_IMPORT_PREFIX}/lib/libSofa.Simulation.Common.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
