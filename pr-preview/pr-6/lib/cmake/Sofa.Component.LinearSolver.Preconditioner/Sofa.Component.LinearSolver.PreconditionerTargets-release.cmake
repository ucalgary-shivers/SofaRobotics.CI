#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.LinearSolver.Preconditioner" for configuration "Release"
set_property(TARGET Sofa.Component.LinearSolver.Preconditioner APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.LinearSolver.Preconditioner PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.LinearSolver.Preconditioner.so"
  IMPORTED_SONAME_RELEASE "libSofa.Component.LinearSolver.Preconditioner.so"
  )

list(APPEND _cmake_import_check_targets Sofa.Component.LinearSolver.Preconditioner )
list(APPEND _cmake_import_check_files_for_Sofa.Component.LinearSolver.Preconditioner "${_IMPORT_PREFIX}/lib/libSofa.Component.LinearSolver.Preconditioner.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
