/*
 * Copyright (C) 2008 The Android Open Source Project
 * Copyright (C) 2014 The CyanogenMod Project
 * Copyright (C) 2017 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdlib.h>

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"


static void import_kernel_nv(const std::string& key,
        const std::string& value, bool for_emulator __attribute__((unused)))
{
    if (key.empty()) return;

    if (key == "oemandroidboot.phoneid") {
        // Dual Sim variant contains two IMEIs separated by comma.
        if ((count(value.begin(), value.end(),',')) > 0) {
            //property_set("ro.boot.radio.multisim.config", "ss");
            property_set("persist.radio.multisim.config", "ss");
            property_set("ro.semc.product.model", "G3311");
            property_set("ro.semc.product.name", "Xperia L1");
            property_set("ro.product.model", "G3311");
            property_set("ro.product.name", "pine");
            property_set("ro.product.device", "pine");
            property_set("ro.build.description", "pine-user 7.0 2.92.J.7.91_201901172207 1547739479 test-keys");
            property_set("ro.build.fingerprint", "alps/pine/pine:7.0/2.92.J.7.91_201901172207/1547739479:user/test-keys");
        } else {
            property_set("persist.radio.multisim.config", "dsds");
            property_set("ro.semc.product.model", "G3312");
            property_set("ro.semc.product.name", "Xperia L1");
            property_set("ro.product.model", "G3312");
            property_set("ro.product.name", "pine_dsds");
            property_set("ro.product.device", "pine_dsds");
            property_set("ro.build.description", "pine-user 7.0 2.92.J.7.91_201901172207 1547739479 test-keys");
            property_set("ro.build.fingerprint", "alps/pine/pine:7.0/2.92.J.7.91_201901172207/1547739479:user/test-keys");
        }
    }
}

void vendor_load_properties()
{
    import_kernel_cmdline(0, import_kernel_nv);
}
