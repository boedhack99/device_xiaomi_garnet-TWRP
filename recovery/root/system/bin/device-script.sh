#!/system/bin/sh
# This script is needed to automatically set device props.

LOG_PATH=/tmp/recovery.log

setdevicename() {
    resetprop "ro.product.name" "$1"
    resetprop "ro.build.product" "$1"
    resetprop "ro.vendor.product.device" "$1"
    resetprop "ro.system.product.device" "$1"
    resetprop "ro.system_ext.product.device" "$1"
    resetprop "ro.odm.product.device" "$1"
    resetprop "ro.product.device" "$1"
    resetprop "ro.product.product.device" "$1"
    resetprop "ro.product.bootimage.device" "$1"
    resetprop "ro.product.odm.device" "$1"
    resetprop "ro.product.system.device" "$1"
    resetprop "ro.product.system_ext.device" "$1"
    resetprop "ro.product.vendor.device" "$1"
    resetprop "ro.product.board" "$1"
}

setdevicemodel() {
    resetprop "ro.product.model" "$1"
    resetprop "ro.product.vendor.model" "$1"
    resetprop "ro.product.odm.model" "$1"
    resetprop "ro.product.system.model" "$1"
    resetprop "ro.product.system_ext.model" "$1"
    resetprop "ro.product.product.model" "$1"
}

load_garnet()
{
    echo "I:Variant-Script: Loaded garnet variant" | tee -a $LOG_PATH
    setdevicename "garnet"
    setdevicemodel "2312DRA50G"
}

load_garnetp()
{
    echo "I:Variant-Script: Loaded garnetp variant" | tee -a $LOG_PATH
    setdevicename "garnetp"
    setdevicemodel "23122PCD1G"
}

load_XIG05()
{
    echo "I:Variant-Script: Loaded XIG05 ( JP version ) variant" | tee -a $LOG_PATH
    setdevicename "XIG05"
    setdevicemodel "XIG05"
}

variant=$(resetprop ro.boot.hwname)

case $variant in
    "garnet")
        load_garnet
        ;;
    "garnetp")
        ;;
        load_garnetp
    "XIG05")
        ;;
        load_XIG05
    *)
        ;;
        load_garnet
        ;;
esac

exit 0
