VBoxManage createvm -name amwa2 --register
VBoxManage modifyvm amwa2 --ostype RedHat
VBoxManage modifyvm amwa2 --memory 256 --acpi on --boot1 dvd --nic1 bridged --bridgeadapter1 eth0
VBoxManage storagectl amwa2 --name IDE0 --add ide
VBoxManage createhd --filename /root/VirtualBox\ VMs/amwa2/sda.dvi --size 100000
VBoxManage storageattach amwa2 --storagectl IDE0 --port 0 --device 0 --type hdd --medium /root/VirtualBox\ VMs/amwa2/sda.dvi
VBoxManage storageattach amwa2 --storagectl IDE0 --port 1 --device 0 --type dvddrive --medium /root/iso/rhel5.iso


