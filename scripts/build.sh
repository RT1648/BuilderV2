#!/bin/bash
build() {
source ./build/envsetup.sh #this command sometimes do the jobs
. build/envsetup.sh  #sometimes this one do the jobs, it depends on system itself. Better use both
bash device/xiaomi/fleur/prebuilts/vendor.sh
lunch superior_fleur-userdebug
export SKIP_ABI_CHECKS=true
export SKIP_API_CHECKS=true
export ALLOW_MISSING_DEPENDENCIES=true
mka bacon
}
build
