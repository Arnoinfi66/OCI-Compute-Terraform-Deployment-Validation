# Compute Terraform Review

## Overview

This document explains the main Terraform files used in this OCI Compute example.

The goal is to keep the configuration simple and easy to review.

---

## versions.tf

The `versions.tf` file defines the Terraform version and OCI provider requirement.

This helps make the provider dependency clear before running Terraform commands.

---

## provider.tf

The `provider.tf` file defines the OCI provider authentication fields.

It uses variables for tenancy OCID, user OCID, fingerprint, private key path, and region.

Real authentication values should not be committed to GitHub.

---

## variables.tf

The `variables.tf` file defines all input values used by the Terraform configuration.

Examples include:

- Compartment OCID
- Availability domain
- Subnet OCID
- Image OCID
- Instance shape
- SSH public key
- Public IP option
- Boot volume size

---

## main.tf

The `main.tf` file defines the OCI Compute instance resource.

It includes:

- Availability domain
- Compartment
- Shape
- Display name
- VNIC details
- Subnet reference
- Image source details
- SSH public key metadata
- Freeform tags

---

## outputs.tf

The `outputs.tf` file displays selected values after Terraform apply.

Examples include:

- Instance OCID
- Instance state
- Display name
- Private IP
- Public IP, if assigned

---

## terraform.tfvars.example

The `terraform.tfvars.example` file shows the values that are needed without exposing real values.

Real `terraform.tfvars` files should not be committed to GitHub.

---

## What I Understood

My main understanding is that each Terraform file has a specific role.

The provider connects to OCI. Variables keep sensitive or environment-specific values outside the main resource definition. The main resource file defines what should be created. Outputs help validate what was created.
