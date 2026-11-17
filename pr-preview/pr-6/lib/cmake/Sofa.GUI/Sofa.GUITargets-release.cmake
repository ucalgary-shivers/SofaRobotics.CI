#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.GUI" for configuration "Release"
set_property(TARGET Sofa.GUI APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.GUI PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.GUI.so"
  IMPORTED_SONAME_RELEASE "libSofa.GUI.so"
  )

list(APPEND _cmake_import_check_targets Sofa.GUI )
list(APPEND _cmake_import_check_files_for_Sofa.GUI "${_IMPORT_PREFIX}/lib/libSofa.GUI.so" )

# Import target "runSofa" for configuration "Release"
set_property(TARGET runSofa APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(runSofa PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/runSofa.html"
  )

list(APPEND _cmake_import_check_targets runSofa )
list(APPEND _cmake_import_check_files_for_runSofa "${_IMPORT_PREFIX}/bin/runSofa.html" )

# Import target "runSofaGLFW" for configuration "Release"
set_property(TARGET runSofaGLFW APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(runSofaGLFW PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/runSofaGLFW.html"
  )

list(APPEND _cmake_import_check_targets runSofaGLFW )
list(APPEND _cmake_import_check_files_for_runSofaGLFW "${_IMPORT_PREFIX}/bin/runSofaGLFW.html" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
