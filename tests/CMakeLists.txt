add_executable(test_sum "")        
target_link_libraries(test_sum my_math)
target_sources(test_sum 
   PUBLIC 
   ${CMAKE_CURRENT_LIST_DIR}/test_sum.c
)
target_include_directories(test_sum 
   PUBLIC 
   ${CMAKE_SOURCE_DIR}/src/lib
)

add_test(
  NAME test_sum
  COMMAND $<TARGET_FILE:test_sum>
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/
  )