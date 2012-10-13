# This script automatically installs all patches needed for devices supported by Jellaxy
# Concept by Rashed97, reviewed by Bytecode, some minor updates by TheWhisp


echo "Obtaining build directory..."
rootdirectory="$PWD"
cd frameworks/av
echo "Applying frameworks/av patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/frameworks_av/*.patch
cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/frameworks_native/*.patch
cd $rootdirectory
cd vendor/cm
echo "Applying vendor/cm patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/vendor_cm/*.patch
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
echo "Applying LegacyCamera patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/packages_apps_LegacyCamera/*.patch
cd $rootdirectory
cd packages/apps/Gallery2
echo "Applying Gallery2 patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/packages_apps_Gallery2/*.patch
cd $rootdirectory
cd external/libncurses
echo "Applying libncurses patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_libncurses/*.patch
cd $rootdirectory
cd external/webkit
echo "Applying webkit patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_webkit/*.patch
echo "Changing to build directory.."
cd $rootdirectory
