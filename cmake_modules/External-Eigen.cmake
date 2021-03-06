#MESSAGE( "External project - Eigen" )

SET( Eigen_DEPENDENCIES )

MESSAGE( STATUS "Adding Eigen-3.3.7 ...")

ExternalProject_Add( 
  Eigen
  URL http://bitbucket.org/eigen/eigen/get/3.3.7.tar.bz2
  SOURCE_DIR Eigen-source
  UPDATE_COMMAND ""
  PATCH_COMMAND ""
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND cmake -E echo "Skipping install step."
)

SET( EIGEN_INCLUDE_DIR ${CMAKE_BINARY_DIR}/Eigen-source CACHE STRING "Eigen Include Dir" )