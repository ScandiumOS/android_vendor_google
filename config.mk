#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Automated
$(call inherit-product, vendor/google/gms/gms-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    GmsCarrierConfigOverlay \
    GmsConfigOverlayCommon \
    GmsConfigOverlayComms \
    GmsConfigOverlayGeotz \
    GmsConfigOverlayGSA \
    GmsConfigOverlayPhotos \
    GmsContactsProviderOverlay \
    GmsSettingsOverlay \
    GmsSettingsProviderOverlay \
    GmsSetupWizardOverlay \
    GmsSystemUIOverlay \
    GmsTelecommOverlay \
    GmsTelephonyOverlay \
    PixelSetupWizardOverlay \
    PixelSetupWizardStringsOverlay

# Packages
PRODUCT_PACKAGES += \
    PartnerBookmarksProvider

# SetupWizard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.theme=glif_v3_light \
    setupwizard.feature.show_pixel_tos=true \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    setupwizard.feature.enable_wifi_tracker=true \
    ro.carriersetup.vzw_consent_page=true \
    setupwizard.feature.day_night_mode_enabled=true \
    setupwizard.feature.portal_notification=true \
    setupwizard.feature.lifecycle_refactoring=true \
    setupwizard.feature.notification_refactoring=true
    setupwizard.feature.notification_refactoring=true \
    setupwizard.feature.enable_quick_start_flow=true

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif
