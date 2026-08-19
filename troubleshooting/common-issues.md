# Common Issues

This file lists common issues that can happen when reviewing or running the Terraform configuration.

The examples use general wording only.

---

## Authentication Issue

Possible reason:

```text
OCI credentials, fingerprint, private key path, or user OCID is incorrect.
```

Review:

- Tenancy OCID
- User OCID
- API key fingerprint
- Private key path
- Region
- User permissions

---

## Compartment Access Issue

Possible reason:

```text
The user does not have permission to manage compute resources in the selected compartment.
```

Review:

- IAM policy
- Compartment OCID
- User or group access
- Region and tenancy

---

## Subnet Issue

Possible reason:

```text
The subnet OCID is incorrect or not available in the selected compartment or region.
```

Review:

- Subnet OCID
- VCN and subnet location
- Availability domain or regional subnet setup
- Network security rules

---

## Image Issue

Possible reason:

```text
The image OCID is not valid for the selected region or shape.
```

Review:

- Image OCID
- Region
- Operating system image availability
- Shape compatibility

---

## Shape Availability Issue

Possible reason:

```text
The selected shape is not available or not allowed in the tenancy.
```

Review:

- Shape name
- Availability domain
- Service limits
- Tenancy quota

---

## SSH Key Issue

Possible reason:

```text
The SSH public key is missing or not in the expected format.
```

Review:

- SSH public key value
- Metadata block
- Key formatting
- Whether private keys are kept outside GitHub

---

## State File Risk

Possible reason:

```text
Terraform state files may contain sensitive information.
```

Review:

- Do not commit `terraform.tfstate`
- Do not commit `terraform.tfvars`
- Do not commit private keys
- Confirm `.gitignore` is present

---

## What I Understood

My main understanding is that Terraform errors should be reviewed by area.

Authentication, IAM access, compartment, subnet, image, shape, SSH key, and state file issues can all affect the deployment flow.
