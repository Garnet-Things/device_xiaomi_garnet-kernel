#!/bin/bash

# Extract DTBS
python3 -m venv my-env
source my-env/bin/activate
pip3 install extract-dtb
extract-dtb dtbo.img -o ./dts/

# Extract kernel
python3 ../../../system/tools/mkbootimg/unpack_bootimg.py --boot_img boot.img --out ./

# Clean Up
rm -rf ramdisk my-env boot_signature boot.img dtbo.img ./dts/00_kernel
