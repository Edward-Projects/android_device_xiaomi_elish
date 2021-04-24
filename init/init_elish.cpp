/*
 * Copyright (c) 2021, The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

#include <fs_mgr_dm_linear.h>


void property_override(char const prop[], char const value[]) {
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);

    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void load_china() {
    property_override("ro.build.fingerprint", "Xiaomi/elish/elish:13/RKQ1.211001.001/V14.0.3.0.TKYCNXM:user/release-keys");
    property_override("ro.product.model", "M2105K81AC");
    property_override("ro.build.version.security_patch", "2023-03-01");
}

void load_more_property() {
    //  Disable OEM unlock prop
    property_override("ro.oem_unlock_supported", "0");
}

void vendor_load_properties() {
    std::string region = android::base::GetProperty("ro.boot.hwc", "");

    if (region.find("CN") != std::string::npos)
        load_china();
    
    load_more_property();

#ifdef __ANDROID_RECOVERY__
    std::string buildtype = android::base::GetProperty("ro.build.type", "userdebug");
    if (buildtype != "user") {
        property_override("ro.debuggable", "1");
        property_override("ro.adb.secure.recovery", "0");
    }
#endif
}
