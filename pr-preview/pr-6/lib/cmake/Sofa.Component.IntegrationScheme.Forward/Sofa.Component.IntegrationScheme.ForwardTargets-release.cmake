#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.IntegrationScheme.Forward" for configuration "Release"
set_property(TARGET Sofa.Component.IntegrationScheme.Forward APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.IntegrationScheme.Forward PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.IntegrationScheme.Forward.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.IntegrationScheme.Forward.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.IntegrationScheme.Forward )
list(APPEND _cmake_import_check_files_for_Sofa.Component.IntegrationScheme.Forward "${_IMPORT_PREFIX}/lib/libSofa.Component.IntegrationScheme.Forward.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
