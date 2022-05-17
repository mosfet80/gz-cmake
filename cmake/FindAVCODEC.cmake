#===============================================================================
# Copyright (C) 2017 Open Source Robotics Foundation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
########################################
# Find avcodec
include(IgnPkgConfig)
ign_pkg_check_modules_quiet(AVCODEC libavcodec)

if(NOT AVCODEC_FOUND)
  include(IgnManualSearch)
  gz_manual_search(AVCODEC
                   HEADER_NAMES "libavcodec/avcodec.h"
                   LIBRARY_NAMES "avcodec")
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
  AVCODEC
  REQUIRED_VARS AVCODEC_FOUND)
