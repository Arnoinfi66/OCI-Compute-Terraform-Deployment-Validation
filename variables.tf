variable "tenancy_ocid" {
  description = "OCID of the OCI tenancy."
  type        = string
  sensitive   = true
}

variable "user_ocid" {
  description = "OCID of the OCI user used for Terraform authentication."
  type        = string
  sensitive   = true
}

variable "fingerprint" {
  description = "API key fingerprint for the OCI user."
  type        = string
  sensitive   = true
}

variable "private_key_path" {
  description = "Local path to the private API key file."
  type        = string
  sensitive   = true
}

variable "region" {
  description = "OCI region where resources will be reviewed or created."
  type        = string
}

variable "compartment_ocid" {
  description = "OCID of the compartment where the compute instance will be created."
  type        = string
  sensitive   = true
}

variable "availability_domain" {
  description = "Availability domain for the compute instance."
  type        = string
}

variable "subnet_ocid" {
  description = "OCID of the subnet where the primary VNIC will be created."
  type        = string
  sensitive   = true
}

variable "image_ocid" {
  description = "OCID of the image used to create the compute instance."
  type        = string
  sensitive   = true
}

variable "instance_display_name" {
  description = "Display name for the compute instance."
  type        = string
  default     = "demo-terraform-compute"
}

variable "hostname_label" {
  description = "Hostname label for the primary VNIC."
  type        = string
  default     = "demotfcompute"
}

variable "instance_shape" {
  description = "Compute shape for the instance. Confirm shape availability in the selected region before applying."
  type        = string
  default     = "VM.Standard.E2.1.Micro"
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP to the primary VNIC."
  type        = bool
  default     = false
}

variable "boot_volume_size_in_gbs" {
  description = "Boot volume size in GB."
  type        = number
  default     = 50
}

variable "ssh_public_key" {
  description = "SSH public key used for instance access."
  type        = string
  sensitive   = true
}

variable "freeform_tags" {
  description = "Sample freeform tags for the compute instance."
  type        = map(string)

  default = {
    CreatedBy = "Terraform"
    Purpose   = "ProductReview"
  }
}
