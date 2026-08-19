# Product Usage Summary

## Product Used

Oracle Cloud Infrastructure Compute and Terraform Provider for OCI

---

## Purpose

This repository explains a simple OCI Compute instance deployment and validation flow using Terraform.

The focus is to show how Terraform provider configuration, variables, compute instance resource settings, VNIC details, image source details, validation commands, expected results, cleanup steps, and common issue review work together.

---

## What I Created

I created a structured repository covering:

- Terraform provider configuration
- Input variables
- OCI Compute instance resource
- VNIC and subnet reference
- Image and shape reference
- SSH public key metadata
- Terraform command flow
- Expected validation results
- Cleanup steps
- Common issue review

---

## Product Areas Reviewed

The repository is based on the following OCI and Terraform areas:

- OCI Compute
- OCI Terraform provider
- Compute instance resource
- Availability domain
- Compartment
- Subnet
- VNIC details
- Image OCID
- Instance shape
- SSH public key metadata
- Terraform init
- Terraform validate
- Terraform plan
- Terraform apply
- Terraform destroy

---

## What I Understood

My main understanding is that infrastructure-as-code should be reviewed before deployment.

Terraform helps define the compute instance configuration clearly, but the values must be correct. The compartment, subnet, image, shape, SSH key, and provider settings all need to align.

Validation and plan review are important before applying changes. Cleanup is also important after testing.

---

## Clean Usage Note

This repository uses sample names, placeholder values, and sample Terraform configuration only.

It does not include copied code from another person, real OCIDs, private keys, tenancy details, real subnet IDs, real image IDs, real IP addresses, or project-specific information.
