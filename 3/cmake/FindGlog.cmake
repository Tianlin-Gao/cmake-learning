# - Try to find Glog
# Once done, this will define
#
# GLOG_FOUND - system has Glog
# GLOG_INCLUDE_DIRS - the Glog include directories
# GLOG_LIBRARIES - link these to use Glog

include(FindPackageHandleStandardArgs)

find_library(GLOG_LIBRARY glog)

find_path(GLOG_INCLUDE_DIR glog/logging.h)
find_path(GLOG_INCLUDE_DIR2 glog/loggingg.h)


find_package_handle_standard_args(glog DEFAULT_MSG
  GLOG_LIBRARY
  GLOG_INCLUDE_DIR2
  GLOG_INCLUDE_DIR)

mark_as_advanced(
  GLOG_LIBRARY
  GLOG_INCLUDE_DIR)

set(GLOG_LIBRARIES ${GLOG_LIBRARY})
set(GLOG_INCLUDE_DIRS ${GLOG_INCLUDE_DIR})
