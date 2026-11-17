#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.LinearSolver.Direct" for configuration "Release"
set_property(TARGET Sofa.Component.LinearSolver.Direct APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.LinearSolver.Direct PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.LinearSolver.Direct.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.LinearSolver.Direct )
list(APPEND _cmake_import_check_files_for_Sofa.Component.LinearSolver.Direct "${_IMPORT_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
