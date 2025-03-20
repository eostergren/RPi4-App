set(CMAKE_CXX_STANDARD 14)

#add_compile_options(-Wall -Wextra -Werror -O0)


if("${CMAKE_BUILD_TYPE}" STREQUAL "Debug")
 # target_compile_options( -O0 -U_FORTIFY_SOURCE -Wno-error  )
   add_compile_options(-O0 -U_FORTIFY_SOURCE -Wno-error)
else() 
  add_compile_options(-Wall -Wextra -Werror)
endif()


# Add remaining source folders
add_subdirectory(test-app)
