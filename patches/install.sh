# This script automatically installs all patches needed for devices supported by Jellaxy
# Concept by Rashed97, reviewed by Bytecode, some minor updates by TheWhisp
# How to install: 1) cd ~/<patch>/<to>/<source>/ 2) ./device/samsung/msm7x27-common/patches/install.sh

echo "Obtaining build directory..."
rootdirectory="$PWD"
cd build
echo "Applying build patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/build/*.patch
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
cd packages/apps/Calculator
echo "Applying packages/apps/Calculator patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/packages_apps_Calculator/*.patch
echo "Changing to build directory.."
cd $rootdirectory
