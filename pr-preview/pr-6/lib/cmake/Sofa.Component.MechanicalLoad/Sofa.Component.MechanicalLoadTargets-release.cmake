#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.MechanicalLoad" for configuration "Release"
set_property(TARGET Sofa.Component.MechanicalLoad APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.MechanicalLoad PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.MechanicalLoad.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.MechanicalLoad.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.MechanicalLoad )
list(APPEND _cmake_import_check_files_for_Sofa.Component.MechanicalLoad "${_IMPORT_PREFIX}/lib/libSofa.Component.MechanicalLoad.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
