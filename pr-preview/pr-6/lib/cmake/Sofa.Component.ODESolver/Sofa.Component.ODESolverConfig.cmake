### Expanded from @PACKAGE_GUARD@ by SofaMacrosInstall.cmake ###
include_guard()
################################################################

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Sofa.Component.ODESolverConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

message(WARNING
    "[SOFA v26.12] Sofa.Component.ODESolver has been renamed to "
    "Sofa.Component.IntegrationScheme.\n"
    "Please replace:\n"
    "    find_package(Sofa.Component.ODESolver)\n"
    "with:\n"
    "    find_package(Sofa.Component.IntegrationScheme)\n"
    "in your CMakeLists.txt. "
    "This package will be fully removed in v27.12."
)


set(SOFACOMPONENTODESOLVER_SOURCE_DIR compat/sofa/component/odesolver)

find_package(Sofa.Config QUIET REQUIRED)
foreach(target ${SOFACOMPONENTODESOLVER_SOURCE_DIR})
    sofa_find_package(${target} QUIET REQUIRED)
endforeach()

sofa_find_package(Sofa.Simulation.Core QUIET REQUIRED)
sofa_find_package(Sofa.Component.IntegrationScheme QUIET REQUIRED)

if(NOT TARGET Sofa.Component.ODESolver)
    include("${CMAKE_CURRENT_LIST_DIR}/Sofa.Component.ODESolverTargets.cmake")
endif()
