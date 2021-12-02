#
# Copyright (C) 2019 Wind River Systems, Inc.
#
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LICENSE_append_marvell-cn91xx = " \
	& Firmware-Marvell-is-fw \
"

LIC_FILES_CHKSUM_append_marvell-cn91xx = " \
	file://../is_fw/license.txt;md5=a72fca49a2e8fd4a7e415c717ca0132a \
"

NO_GENERIC_LICENSE[Firmware-Marvell-is-fw] = "../is_fw/license.txt"

# This tarball is got from the Marvell SDK11.21.09
SRC_URI_append_marvell-cn91xx = "\
	file://sources-is_fw-21.09.tar.bz2 \
"

PACKAGES_prepend_marvell-cn91xx = "\
		${PN}-marvell-is-fw \
"

LICENSE_${PN}-marvell-is-fw = "Firmware-Marvell-is-fw"

FILES_${PN}-marvell-is-fw = " \
		${nonarch_base_libdir}/firmware/inside-secure/eip197b/ifpp.bin \
		${nonarch_base_libdir}/firmware/inside-secure/eip197b/ipue.bin \
		${nonarch_base_libdir}/firmware/inside-secure/eip197d/ifpp.bin \
		${nonarch_base_libdir}/firmware/inside-secure/eip197d/ipue.bin \
		${nonarch_base_libdir}/firmware/inside-secure/license.txt \
"

do_install_append_marvell-cn91xx() {
		cp -r ${WORKDIR}/is_fw/inside-secure ${D}${nonarch_base_libdir}/firmware/
		cp ${WORKDIR}/is_fw/license.txt ${D}${nonarch_base_libdir}/firmware/inside-secure
}
