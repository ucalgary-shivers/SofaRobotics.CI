#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.ODESolver" for configuration "Release"
set_property(TARGET Sofa.Component.ODESolver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.ODESolver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.ODESolver.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.ODESolver.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.ODESolver )
list(APPEND _cmake_import_check_files_for_Sofa.Component.ODESolver "${_IMPORT_PREFIX}/lib/libSofa.Component.ODESolver.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
