#/bin/bash
mkdir package/system/fstools/patches
cd package/system/fstools/patches && wget https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/system/fstools/patches/0001-fstools-support-extroot-for-non-MTD-rootfs_data.patch
cd package/system/fstools/ && rm Makefile && wget https://raw.githubusercontent.com/coolsnowwolf/lede/2f8dd6a67175ad55cc732b2943d880e61ff0849b/package/system/fstools/Makefile
