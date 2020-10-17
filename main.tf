provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = var.api_url
    pm_password = var.cloud_password
    pm_user = var.cloud_user
    pm_otp = ""
}

resource "proxmox_vm_qemu" "ubuntu" {
    name = "vm10"
    target_node = "tolik"
    clone = "ubuntu"
    os_type = "cloud-init"
}
