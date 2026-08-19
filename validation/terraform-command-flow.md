# Terraform Command Flow

This file documents the basic Terraform command flow used for review and validation.

Use placeholder values only in public documentation.

Do not publish real OCIDs, private keys, subnet IDs, image IDs, or SSH keys.

---

## Step 1 - Format Terraform Files

```bash
terraform fmt
```

Purpose:

```text
Formats Terraform files so the configuration is easier to read.
```

Expected result:

```text
Terraform files are formatted without errors.
```

---

## Step 2 - Initialize Terraform

```bash
terraform init
```

Purpose:

```text
Initializes the Terraform working directory and downloads the OCI provider.
```

Expected result:

```text
Terraform initializes successfully and the OCI provider is available.
```

---

## Step 3 - Validate Configuration

```bash
terraform validate
```

Purpose:

```text
Checks whether the Terraform configuration is syntactically valid.
```

Expected result:

```text
Terraform confirms that the configuration is valid.
```

---

## Step 4 - Review Terraform Plan

```bash
terraform plan -var-file="terraform.tfvars"
```

Purpose:

```text
Reviews what Terraform will create before applying changes.
```

Expected result:

```text
Terraform shows the planned OCI Compute instance and related configuration.
```

---

## Step 5 - Apply Terraform Configuration

```bash
terraform apply -var-file="terraform.tfvars"
```

Purpose:

```text
Creates the OCI Compute instance after review and approval.
```

Expected result:

```text
Terraform creates the compute instance and displays output values.
```

---

## Step 6 - Destroy Test Resource

```bash
terraform destroy -var-file="terraform.tfvars"
```

Purpose:

```text
Removes the test compute instance when validation is complete.
```

Expected result:

```text
Terraform destroys the test resource and confirms completion.
```
