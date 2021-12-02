require ${@bb.utils.contains('MACHINE', 'marvell-cn91xx', 'linux-yocto-marvell-cn91xx.inc', '', d)}
require ${@bb.utils.contains('MACHINE', 'marvell-cn96xx', 'linux-yocto-marvell-cn96xx.inc', '', d)}
