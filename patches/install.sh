# This script automatically installs all patches needed for devices supported by Jellaxy
# Concept by Rashed97, reviewed by Bytecode, some minor updates by TheWhisp
# How to install: 1) cd ~/<patch>/<to>/<source>/ 2) ./device/samsung/msm7x27-common/patches/install.sh

echo "Obtaining build directory..."
rootdirectory="$PWD"
cd external/srec
echo "Applying external/srec patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_srec/*.patch
cd $rootdirectory
cd vendor/aokp
echo "Applying vendor/aokp patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/vendor_aokp/*.patch
cd $rootdirectory
cd dalvik/vm
echo "Applying dalvik/vm patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/dalvik_vm/*.patch
cd $rootdirectory
cd frameworks/av
echo "Applying frameworks/av patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/frameworks_av/*.patch
cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/frameworks_native/*.patch
cd $rootdirectory
cd build
echo "Applying build patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/build/*.patch
cd $rootdirectory
cd frameworks/base
echo "Applying frameworks/base patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/frameworks_base/*.patch
cd $rootdirectory
cd packages/apps/LegacyCamera
echo "Applying packages/apps/LegacyCamera patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/packages_apps_LegacyCamera/*.patch
cd $rootdirectory
cd packages/apps/Settings
echo "Applying packages/apps/Settings patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/packages_apps_Settings/*.patch
cd $rootdirectory
cd packages/apps/Gallery2
echo "Applying packages/apps/Gallery2 patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/packages_apps_Gallery2/*.patch
cd $rootdirectory
cd external/libncurses
echo "Applying external/libncurses patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_libncurses/*.patch
cd $rootdirectory
cd external/webkit
echo "Applying external/webkit patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_webkit/*.patch
echo "Changing to build directory.."
cd $rootdirectory
cd external/wpa_supplicant_6
echo "Applying wpa_supplicant_6 patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_wpa_supplicant_6/*.patch
echo "Changing to build directory.."
cd $rootdirectory
cd hardware/ril
echo "Applying hardware/ril patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/hardware_ril/*.patch
echo "Changing to build directory.."
cd $rootdirectory
