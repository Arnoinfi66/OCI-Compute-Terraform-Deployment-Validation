resource "oci_core_instance" "demo_compute" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  shape               = var.instance_shape
  display_name        = var.instance_display_name

  create_vnic_details {
    subnet_id        = var.subnet_ocid
    assign_public_ip = var.assign_public_ip
    display_name     = "${var.instance_display_name}-vnic"
    hostname_label   = var.hostname_label
  }

  source_details {
    source_type             = "image"
    source_id               = var.image_ocid
    boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  freeform_tags = var.freeform_tags
}
