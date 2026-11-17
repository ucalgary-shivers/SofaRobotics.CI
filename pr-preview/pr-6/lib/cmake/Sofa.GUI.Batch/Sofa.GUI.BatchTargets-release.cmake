#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.GUI.Batch" for configuration "Release"
set_property(TARGET Sofa.GUI.Batch APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.GUI.Batch PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.GUI.Batch.so"
  IMPORTED_SONAME_RELEASE "libSofa.GUI.Batch.so"
  )

list(APPEND _cmake_import_check_targets Sofa.GUI.Batch )
list(APPEND _cmake_import_check_files_for_Sofa.GUI.Batch "${_IMPORT_PREFIX}/lib/libSofa.GUI.Batch.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
