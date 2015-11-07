#!/bin/sh

docker run \
	-it \
	--env="DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--volume="/lib/modules/:/lib/modules/:ro" \
	--volume="/etc/modprobe.conf/:/etc/modprobe.conf/:ro" \
	--volume="/usr/share/nvidia/:/usr/share/nvidia/:ro" \
	--device /dev/nvidia0:/dev/nvidia0 \
	--device /dev/nvidia1:/dev/nvidia1 \
	--device /dev/nvidiactl:/dev/nvidiactl \
	--device /dev/nvidia-uvm:/dev/nvidia-uvm \
	--device /dev/bus/usb:/dev/bus/usb \
	--privileged \
	$@
