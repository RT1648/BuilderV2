#!/bin/bash
upload() {
curl --upload-file ./out/target/product/fleur/Sup*.zip https://free.keep.sh
}
upload
