echo "Enter ID of VM:"
read id
echo "Enter name of VM:"
read name
qm create $id --name $name --scsihw virtio-scsi-pci --virtio0 local-lvm:16 -net0 virtio,firewall=1,bridge=vmbr0 --bootdisk virtio0 --ostype l26 --memory 2048 --onboot no --sockets 1 --agent 1
qm start $id
