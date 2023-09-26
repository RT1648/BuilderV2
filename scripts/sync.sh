#!/bin/bash
chk() {
df -h
free -h
nproc
}
#|===============|
#|Checking System|
#|===============|
chk

sync() {
repo init --depth=1 --no-repo-verify -u https://github.com/SuperiorOS/manifest.git -b thirteen
git clone https://github.com/RT1648/local_manifest-fleurprebuilt.git .repo/local_manifests
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle -j$(nproc --all)
}
#|===============|
#|Syncing Sources|
#|===============|
sync
