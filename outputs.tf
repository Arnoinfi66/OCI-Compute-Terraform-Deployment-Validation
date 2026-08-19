output "instance_id" {
  description = "OCID of the created compute instance."
  value       = oci_core_instance.demo_compute.id
}

output "instance_state" {
  description = "Lifecycle state of the compute instance."
  value       = oci_core_instance.demo_compute.state
}

output "instance_display_name" {
  description = "Display name of the compute instance."
  value       = oci_core_instance.demo_compute.display_name
}

output "private_ip" {
  description = "Private IP address of the compute instance."
  value       = oci_core_instance.demo_compute.private_ip
}

output "public_ip" {
  description = "Public IP address of the compute instance, if assigned."
  value       = oci_core_instance.demo_compute.public_ip
}
