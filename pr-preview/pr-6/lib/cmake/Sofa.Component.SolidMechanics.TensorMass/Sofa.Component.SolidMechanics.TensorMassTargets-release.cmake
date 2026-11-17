#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.SolidMechanics.TensorMass" for configuration "Release"
set_property(TARGET Sofa.Component.SolidMechanics.TensorMass APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.SolidMechanics.TensorMass PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.SolidMechanics.TensorMass.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.SolidMechanics.TensorMass.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.SolidMechanics.TensorMass )
list(APPEND _cmake_import_check_files_for_Sofa.Component.SolidMechanics.TensorMass "${_IMPORT_PREFIX}/lib/libSofa.Component.SolidMechanics.TensorMass.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
