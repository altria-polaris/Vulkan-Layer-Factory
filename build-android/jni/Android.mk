# Copyright 2015-2019 The Android Open Source Project
# Copyright (C) 2015-2019 Valve Corporation
# Copyright (C) 2015-2019 LunarG, Inc.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#      http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
SRC_DIR := ../..
LAYER_DIR := ../generated
THIRD_PARTY := ../third_party
LVL_DIR := $(THIRD_PARTY)/Vulkan-ValidationLayers
ANDROID_DIR := $(SRC_DIR)/build-android

include $(CLEAR_VARS)
LOCAL_MODULE := layer_utils
LOCAL_SRC_FILES += $(LVL_DIR)/layers/vk_layer_config.cpp
LOCAL_SRC_FILES += $(LVL_DIR)/layers/utils/vk_layer_extension_utils.cpp
LOCAL_SRC_FILES += $(LVL_DIR)/layers/error_message/logging.cpp
LOCAL_SRC_FILES += $(LVL_DIR)/layers/utils/vk_layer_utils.cpp
LOCAL_SRC_FILES += $(LVL_DIR)/layers/vulkan/generated/vk_format_utils.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(THIRD_PARTY)/Vulkan-Headers/include \
                    $(LOCAL_PATH)/$(LAYER_DIR)/include \
                    $(LOCAL_PATH)/$(LVL_DIR)/layers \
                    $(LOCAL_PATH)/$(LVL_DIR)/layers/vulkan \
                    $(LOCAL_PATH)/$(LVL_DIR)/layers/vulkan/generated
LOCAL_CPPFLAGS += -std=c++17 -Wall -Werror -Wno-unused-function -Wno-unused-const-variable
LOCAL_CPPFLAGS += -DVK_ENABLE_BETA_EXTENSIONS -DVK_USE_PLATFORM_ANDROID_KHR -DVK_PROTOTYPES -fvisibility=hidden
include $(BUILD_STATIC_LIBRARY)

# Pick up VLF layers
include $(LOCAL_PATH)/$(LAYER_DIR)/include/Android.mk

$(call import-module,android/native_app_glue)
$(call import-module,third_party/googletest)
