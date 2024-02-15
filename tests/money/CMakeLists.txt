find_package(io1 REQUIRED COMPONENTS money)
add_library(money money.cpp)
target_link_libraries(money PRIVATE io1::money)