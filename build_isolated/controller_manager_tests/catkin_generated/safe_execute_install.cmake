execute_process(COMMAND "/home/haoran/US_UR3/build_isolated/controller_manager_tests/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/haoran/US_UR3/build_isolated/controller_manager_tests/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
