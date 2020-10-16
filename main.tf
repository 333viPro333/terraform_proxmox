provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://192.168.255.100:8006/api2/json"
    pm_password = "kibitka228"
    pm_user = "root@pam"
    pm_otp = ""
}

resource "proxmox_vm_qemu" "ubuntu" {
    name = "vm20"
    target_node = "tolik"
    clone = "ubuntu"
    os_type = "cloud-init"
}
