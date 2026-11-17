#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.LinearAlgebra" for configuration "Release"
set_property(TARGET Sofa.LinearAlgebra APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.LinearAlgebra PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.LinearAlgebra.so"
  IMPORTED_SONAME_RELEASE "libSofa.LinearAlgebra.so"
  )

list(APPEND _cmake_import_check_targets Sofa.LinearAlgebra )
list(APPEND _cmake_import_check_files_for_Sofa.LinearAlgebra "${_IMPORT_PREFIX}/lib/libSofa.LinearAlgebra.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
