add_library(my_math "")        
target_sources(my_math 
   PUBLIC 
   ${CMAKE_CURRENT_LIST_DIR}/sum.c 
)