find_package(Crow)
add_executable(LaForum-Backend main.cpp)
target_link_libraries(LaForum-Backend PUBLIC Crow::Crow)