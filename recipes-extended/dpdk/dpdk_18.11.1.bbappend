FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

DPDK_TARGET_MACHINE_marvell-cn91xx = "armada"
COMPATIBLE_MACHINE_marvell-cn91xx = "marvell-cn91xx"

SRC_URI_append_marvell-cn91xx = " \
	file://0001-mk-add-Marvell-ARMADA-architecture-based-on-armv8-a.patch \
	file://0002-checkpatch-add-ignore-params.patch \
	file://0003-devtools-checkpatches.sh-restore-execute-permission.patch \
	file://0004-net-mvpp2-fix-stack-corruption.patch \
	file://0005-net-mvpp2-reserve-4-rss-tables-for-lk-4.14-support.patch \
	file://0006-net-mvpp2-add-xstats_by_id-callbacks.patch \
	file://0007-net-mvpp2-cosmetic-changes-to-cookie-usage.patch \
	file://0008-net-mvpp2-call-destroy-function-only-for-relevant-de.patch \
	file://0009-net-mvpp2-align-checking-order.patch \
	file://0010-net-mvneta-fix-ierror-counted-twice.patch \
	file://0011-patches-fine-tuning-params-for-l2fwd-and-l3fwd-for-a.patch \
	file://0012-net-mvpp2-save-initial-configuration-in-pre-start-ph.patch \
	file://0013-patches-fine-tuning-params-for-l3fwd-for-a7k-a8k.patch \
	file://0014-net-mvpp2-add-loopback-support.patch \
	file://0015-net-lport-add-lport-PMD.patch \
	file://0016-Bump-dpdk-18.11-to-release-devel-19.01.0.patch \
	file://0017-net-mvneta-reset-stats-during-device-start.patch \
	file://0018-net-mvpp2-fix-BUG-in-link-up-flag.patch \
	file://0019-Bump-dpdk-18.11-to-release-devel-19.01.1.patch \
	file://0020-patches-ipsec-secgw-patches.patch \
	file://0021-docs-update-mvpp2-mvneta-mvsam-docs.patch \
	file://0022-examples-ipsec-secgw-Added-pri-field-in-ep1.cfg-file.patch \
	file://0023-meson-add-Marvell-ARMADA-architecture-based-on-armv8.patch \
	file://0024-net-mvpp2-add-vlan-offload-API-to-enable-vlan-filter.patch \
	file://0025-net-mvpp2-only-use-ol_flags-for-checksum-generation-.patch \
	file://0026-net-mvneta-only-use-ol_flags-for-checksum-generation.patch \
	file://0027-crypto-mvsam-added-full-offload-support.patch \
	file://0028-MAINTAINERS-update-Marvell-PMDs.patch \
	file://0029-net-mvpp2-remove-debug-log-on-fast-path.patch \
	file://0030-Bump-dpdk-18.11-to-release-devel-19.02.0.patch \
"

DPDK_TARGET_MACHINE_marvell-cn96xx = "octeontx2"
COMPATIBLE_MACHINE_marvell-cn96xx = "marvell-cn96xx"

SRC_URI_append_marvell-cn96xx = " \
	file://0001-config-add-octeontx2-machine.patch \
	file://0002-common-octeontx2-add-build-infrastructure-and-HW-def.patch \
	file://0003-common-octeontx2-add-IO-handling-APIs.patch \
	file://0004-common-octeontx2-add-mbox-request-and-response-defin.patch \
	file://0005-common-octeontx2-add-mailbox-base-support-infra.patch \
	file://0006-common-octeontx2-add-runtime-log-infra.patch \
	file://0007-common-octeontx2-add-mailbox-send-and-receive-suppor.patch \
	file://0008-common-octeontx2-introduce-common-device-class.patch \
	file://0009-common-octeontx2-introduce-irq-handling-functions.patch \
	file://0010-common-octeontx2-handle-intra-device-operations.patch \
	file://0011-common-octeontx2-add-AF-to-PF-mailbox-IRQ-and-msg-ha.patch \
	file://0012-common-octeontx2-add-PF-to-VF-mailbox-IRQ-and-msg-ha.patch \
	file://0013-common-octeontx2-add-VF-mailbox-IRQ-and-msg-handler.patch \
	file://0014-common-octeontx2-add-uplink-message-support.patch \
	file://0015-common-octeontx2-add-FLR-IRQ-handler.patch \
	file://0016-doc-add-Marvell-OCTEON-TX2-platform-guide.patch \
	file://0017-mempool-octeontx2-add-build-infra-and-device-probe.patch \
	file://0018-drivers-add-init-and-fini-on-octeontx2-NPA-object.patch \
	file://0019-mempool-octeontx2-add-NPA-HW-operations.patch \
	file://0020-mempool-octeontx2-add-NPA-IRQ-handler.patch \
	file://0021-mempool-octeontx2-add-context-dump-support.patch \
	file://0022-mempool-octeontx2-add-mempool-alloc-op.patch \
	file://0023-mempool-octeontx2-add-mempool-free-op.patch \
	file://0024-mempool-octeontx2-add-remaining-slow-path-ops.patch \
	file://0025-mempool-octeontx2-add-fast-path-mempool-ops.patch \
	file://0026-mempool-octeontx2-add-optimized-dequeue-operation-fo.patch \
	file://0027-mempool-octeontx2-add-devargs-for-max-pool-selection.patch \
	file://0028-doc-add-Marvell-OCTEON-TX2-mempool-guide.patch \
	file://0029-mempool-octeontx2-fix-build-with-icc.patch \
	file://0030-mk-fix-march-for-octeontx2-target.patch \
	file://0031-event-octeontx2-add-build-infra-and-device-probe.patch \
	file://0032-event-octeontx2-add-init-and-fini-for-SSO-object.patch \
	file://0033-event-octeontx2-add-device-capabilities-function.patch \
	file://0034-event-octeontx2-add-device-configure-function.patch \
	file://0035-event-octeontx2-add-event-queue-config-functions.patch \
	file://0036-event-octeontx2-allocate-event-inflight-buffers.patch \
	file://0037-event-octeontx2-add-devargs-for-inflight-buffer-coun.patch \
	file://0038-event-octeontx2-add-port-config-functions.patch \
	file://0039-event-octeontx2-support-linking-queues-to-ports.patch \
	file://0040-event-octeontx2-support-dequeue-timeout-tick-convers.patch \
	file://0041-event-octeontx2-add-SSO-GWS-and-GGRP-IRQ-handlers.patch \
	file://0042-event-octeontx2-add-register-dump-functions.patch \
	file://0043-event-octeontx2-support-xstats.patch \
	file://0044-event-octeontx2-add-SSO-HW-device-operations.patch \
	file://0045-event-octeontx2-add-worker-enqueue-functions.patch \
	file://0046-event-octeontx2-add-worker-dequeue-functions.patch \
	file://0047-event-octeontx2-add-SSO-dual-workslot-mode.patch \
	file://0048-event-octeontx2-add-SSO-dual-GWS-HW-device-operation.patch \
	file://0049-event-octeontx2-add-worker-dual-GWS-enqueue-function.patch \
	file://0050-event-octeontx2-add-worker-dual-GWS-dequeue-function.patch \
	file://0051-event-octeontx2-add-devargs-to-force-legacy-mode.patch \
	file://0052-event-octeontx2-add-device-start-function.patch \
	file://0053-event-octeontx2-add-devargs-to-control-SSO-GGRP-QoS.patch \
	file://0054-event-octeontx2-add-device-stop-and-close-functions.patch \
	file://0055-event-octeontx2-add-SSO-selftest.patch \
	file://0056-event-octeontx2-support-event-timer.patch \
	file://0057-event-octeontx2-add-timer-adapter-capabilities.patch \
	file://0058-event-octeontx2-create-and-free-timer-adapter.patch \
	file://0059-event-octeontx2-allow-TIM-to-optimize-config.patch \
	file://0060-event-octeontx2-add-devargs-to-disable-NPA.patch \
	file://0061-event-octeontx2-add-devargs-to-modify-chunk-slots.patch \
	file://0062-event-octeontx2-add-TIM-IRQ-handlers.patch \
	file://0063-event-octeontx2-allow-adapters-to-resize-inflight-bu.patch \
	file://0064-event-octeontx2-add-timer-adapter-info-function.patch \
	file://0065-event-octeontx2-add-TIM-bucket-operations.patch \
	file://0066-event-octeontx2-add-timer-arm-routine.patch \
	file://0067-event-octeontx2-add-timer-arm-timeout-burst.patch \
	file://0068-event-octeontx2-add-timer-cancel-function.patch \
	file://0069-event-octeontx2-add-timer-stats-get-and-reset.patch \
	file://0070-event-octeontx2-add-timer-adapter-start-and-stop.patch \
	file://0071-event-octeontx2-add-devargs-to-limit-timer-adapters.patch \
	file://0072-event-octeontx2-add-devargs-to-control-timer-adapter.patch \
	file://0073-drivers-octeontx2-fix-icc-build-for-i686.patch \
	file://0074-event-octeontx2-add-libatomic-dependency-for-32-bit-.patch \
	file://0075-mempool-octeontx2-fix-clang-build-for-arm64.patch \
	file://0076-raw-octeontx2_dma-add-build-infra-and-device-probe.patch \
	file://0077-raw-octeontx2_dma-update-probe-function.patch \
	file://0078-raw-octeontx2_dma-add-device-configuration.patch \
	file://0079-raw-octeontx2_dma-add-device-close-operation.patch \
	file://0080-raw-octeontx2_dma-add-enqueue-operation.patch \
	file://0081-raw-octeontx2_dma-add-dequeue-and-device-control-ope.patch \
	file://0082-raw-octeontx2_dma-add-driver-self-test.patch \
	file://0083-net-octeontx2-add-build-and-doc-infrastructure.patch \
	file://0084-net-octeontx2-add-ethdev-probe-and-remove.patch \
	file://0085-net-octeontx2-add-device-init-and-uninit.patch \
	file://0086-net-octeontx2-add-devargs-parsing-functions.patch \
	file://0087-net-octeontx2-handle-device-error-interrupts.patch \
	file://0088-net-octeontx2-add-info-get-operation.patch \
	file://0089-net-octeontx2-add-device-configure-operation.patch \
	file://0090-net-octeontx2-handle-queue-specific-error-interrupts.patch \
	file://0091-net-octeontx2-add-context-debug-utils.patch \
	file://0092-net-octeontx2-support-register-dump.patch \
	file://0093-net-octeontx2-add-link-stats-operations.patch \
	file://0094-net-octeontx2-add-basic-stats-operation.patch \
	file://0095-net-octeontx2-add-extended-stats-operations.patch \
	file://0096-net-octeontx2-add-promiscuous-and-allmulticast-mode.patch \
	file://0097-net-octeontx2-add-unicast-MAC-filter.patch \
	file://0098-net-octeontx2-support-RSS.patch \
	file://0099-net-octeontx2-add-Rx-queue-setup-and-release.patch \
	file://0100-net-octeontx2-add-Tx-queue-setup-and-release.patch \
	file://0101-net-octeontx2-handle-port-reconfigure.patch \
	file://0102-net-octeontx2-add-queue-start-and-stop-operations.patch \
	file://0103-net-octeontx2-introduce-traffic-manager.patch \
	file://0104-net-octeontx2-alloc-and-free-TM-HW-resources.patch \
	file://0105-net-octeontx2-configure-TM-HW-resources.patch \
	file://0106-net-octeontx2-enable-Tx-through-traffic-manager.patch \
	file://0107-net-octeontx2-support-packet-type.patch \
	file://0108-net-octeontx2-add-queue-info-and-pool-supported-ops.patch \
	file://0109-net-octeontx2-add-Rx-and-Tx-descriptor-operations.patch \
	file://0110-net-octeontx2-add-module-EEPROM-dump.patch \
	file://0111-net-octeontx2-support-flow-control.patch \
	file://0112-net-octeontx2-support-base-PTP.patch \
	file://0113-net-octeontx2-add-remaining-PTP-operations.patch \
	file://0114-net-octeontx2-introduce-flow-driver.patch \
	file://0115-net-octeontx2-add-flow-utility-functions.patch \
	file://0116-net-octeontx2-add-flow-mbox-utility-functions.patch \
	file://0117-net-octeontx2-add-flow-MCAM-utility-functions.patch \
	file://0118-net-octeontx2-add-flow-parsing-for-outer-layers.patch \
	file://0119-net-octeontx2-add-flow-parsing-for-inner-layers.patch \
	file://0120-net-octeontx2-support-flow-parse-actions.patch \
	file://0121-net-octeontx2-add-flow-operations.patch \
	file://0122-net-octeontx2-support-flow-destroy-ops.patch \
	file://0123-net-octeontx2-add-flow-init-and-fini.patch \
	file://0124-net-octeontx2-connect-flow-API-to-ethdev-ops.patch \
	file://0125-net-octeontx2-implement-VLAN-utility-functions.patch \
	file://0126-net-octeontx2-support-VLAN-offloads.patch \
	file://0127-net-octeontx2-support-VLAN-filters.patch \
	file://0128-net-octeontx2-support-VLAN-TPID-and-PVID-for-Tx.patch \
	file://0129-net-octeontx2-add-FW-version-get-operation.patch \
	file://0130-net-octeontx2-support-Rx.patch \
	file://0131-net-octeontx2-add-Rx-multi-segment-version.patch \
	file://0132-net-octeontx2-add-Rx-vector-version.patch \
	file://0133-net-octeontx2-support-Tx.patch \
	file://0134-net-octeontx2-add-Tx-multi-segment-version.patch \
	file://0135-net-octeontx2-add-Tx-vector-version.patch \
	file://0136-net-octeontx2-add-device-start-operation.patch \
	file://0137-net-octeontx2-add-device-stop-and-close-operations.patch \
	file://0138-net-octeontx2-add-MTU-set-operation.patch \
	file://0139-net-octeontx2-support-Rx-interrupts.patch \
	file://0140-net-octeontx2-add-link-status-operations.patch \
	file://0141-mempool-octeontx2-fix-pool-populating.patch \
	file://0142-common-octeontx2-cleanup-void-returns.patch \
	file://0143-event-octeontx2-add-Rx-adapter.patch \
	file://0144-event-octeontx2-resize-SSO-in-flight-buffers.patch \
	file://0145-event-octeontx2-add-Rx-adapter-fastpath-ops.patch \
	file://0146-event-octeontx2-support-PTP-for-SSO.patch \
	file://0147-event-octeontx2-add-Tx-adapter.patch \
	file://0148-net-deinline-non-critical-ethernet-functions.patch \
	file://0149-mk-introduce-helper-to-check-compiler-argument.patch \
	file://0150-ethdev-add-min-max-MTU-to-device-info.patch \
	file://0151-net-Drop-the-rte-prefix-to-eth-defines-structures.patch \
	file://0152-eal-increase-max-number-of-interrupt-vectors.patch \
	file://0153-net-octeontx2-Hard-code-the-max-supported-MAC-entrie.patch \
	file://0154-usertools-add-octeontx2-SSO-and-NPA-PCIe-devices.patch \
	file://0001-mempool-octeontx2-fix-possible-arm64-ABI-break.patch \
"

DEPENDS_append_marvell-cn91xx = " musdk-marvell libpcap"

export CONFIG_EXAMPLE_VM_POWER_MANAGER = "y"
export LIBMUSDK_PATH = "${PKG_CONFIG_SYSROOT_DIR}/usr"

do_configure_prepend_marvell-cn91xx () {
	sed -e "s#CONFIG_RTE_LIBRTE_PMD_PCAP=n#CONFIG_RTE_LIBRTE_PMD_PCAP=y#" -i ${S}/config/common_base
}
