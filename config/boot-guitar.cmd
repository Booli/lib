setenv bootargs "earlyprintk clk_ignore_unused selinux=0 scandelay root=/dev/mmcblk0p2 rw console=tty0 rootfstype=ext4 console=ttyS3 loglevel=1 rootwait"
setenv os_type linux
fatload mmc 0:1 0x04000000 dtb/lemaker_guitar_bbb.dtb
fatload mmc 0:1 0x7fc0 zImage
bootz 0x7fc0 - 0x04000000