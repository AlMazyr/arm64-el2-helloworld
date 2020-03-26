BIN=out.elf
MONITOR_PORT=1235

#qemu-system-aarch64 -s -S \
qemu-system-aarch64 \
	-M virt \
	-machine virtualization=on \
	-cpu cortex-a72 \
	-m 1024 \
	-nographic \
	-no-reboot \
	-kernel ${BIN} \
	-monitor telnet:127.0.0.1:${MONITOR_PORT},server,nowait \
	-serial stdio \

