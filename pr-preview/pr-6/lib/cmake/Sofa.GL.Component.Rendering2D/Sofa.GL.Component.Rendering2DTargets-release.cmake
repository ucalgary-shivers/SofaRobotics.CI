#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.GL.Component.Rendering2D" for configuration "Release"
set_property(TARGET Sofa.GL.Component.Rendering2D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.GL.Component.Rendering2D PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.GL.Component.Rendering2D.so"
  IMPORTED_SONAME_RELEASE "libSofa.GL.Component.Rendering2D.so"
  )

list(APPEND _cmake_import_check_targets Sofa.GL.Component.Rendering2D )
list(APPEND _cmake_import_check_files_for_Sofa.GL.Component.Rendering2D "${_IMPORT_PREFIX}/lib/libSofa.GL.Component.Rendering2D.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
