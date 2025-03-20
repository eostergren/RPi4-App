
project(test-app VERSION 0.1.0 LANGUAGES C CXX)


add_executable(test-app main.cpp)

# Install
install(
  TARGETS ${PROJECT_NAME}
  DESTINATION bin
  OPTIONAL
)
