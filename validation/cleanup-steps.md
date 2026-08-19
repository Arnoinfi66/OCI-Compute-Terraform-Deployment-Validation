# Cleanup Steps

## Overview

Cleanup is important when testing infrastructure with Terraform.

A test compute instance should not be left running if it is no longer needed.

---

## Review Before Cleanup

Before destroying resources, check:

- Is this only a test resource?
- Is the instance no longer needed?
- Are any outputs or notes required before cleanup?
- Is the correct Terraform workspace or folder being used?
- Is the correct `terraform.tfvars` file being used?

---

## Destroy Command

```bash
terraform destroy -var-file="terraform.tfvars"
```

Purpose:

```text
Removes the test compute instance created by Terraform.
```

---

## Expected Result

```text
Terraform destroys the compute instance successfully.
```

---

## After Cleanup

After cleanup, check:

- Terraform destroy completed successfully
- Compute instance no longer appears in the target compartment
- No test public IP is left attached
- No unexpected resource remains from the test
- No real state file or secret file is uploaded to GitHub

---

## What I Understood

My main understanding is that cleanup is part of product usage validation.

Creating a test resource is only one side. The resource should also be removed properly when the review is complete.
