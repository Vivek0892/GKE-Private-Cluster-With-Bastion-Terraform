resource "google_compute_instance" "private_vm" {
  # checkov:skip=CKV_GCP_39: ADD REASON
  # checkov:skip=CKV_GCP_32: ADD REASON
  # checkov:skip=CKV_GCP_38: ADD REASON
  name         = var.vm_name
  machine_type = var.machine_type 
  zone         = var.zone
  tags         = ["private-vm"]

  boot_disk {
    initialize_params{
      image = var.vm_image
    }
  }
  scratch_disk {
    interface = "SCSI"
  }
  network_interface {
    network = var.vpc_name
    subnetwork = var.subnet_names[0]
  }
  
  service_account {
    email  = var.service_account_email #var.account[1]
    scopes = ["cloud-platform"]
  }
}
