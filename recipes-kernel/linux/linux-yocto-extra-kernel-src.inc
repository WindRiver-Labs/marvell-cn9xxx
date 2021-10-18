EXTRA_KERNEL_FILES:prepend:marvell-cn96xx = "${THISDIR}/linux-yocto:"
EXTRA_KERNEL_SRC_URI:append:marvell-cn96xx += " \
    file://0001-octeontx2-af-fix-gain-ip-failed.patch \
"
FILESEXTRAPATHS:prepend:osv-wrlinux := "${EXTRA_KERNEL_FILES}:"
