#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Constraint.Lagrangian.Model" for configuration "Release"
set_property(TARGET Sofa.Component.Constraint.Lagrangian.Model APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Constraint.Lagrangian.Model PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Constraint.Lagrangian.Model.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.Constraint.Lagrangian.Model )
list(APPEND _cmake_import_check_files_for_Sofa.Component.Constraint.Lagrangian.Model "${_IMPORT_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
