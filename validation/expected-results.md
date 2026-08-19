# Expected Results

This file documents simple expected results for the Terraform review.

It uses sample wording only.

---

## Terraform Format

Expected result:

```text
Terraform files are formatted successfully.
```

If not:

```text
Review indentation, file structure, and Terraform syntax.
```

---

## Terraform Init

Expected result:

```text
Terraform initializes and downloads the OCI provider.
```

If not:

```text
Review internet access, provider block, required provider source, and Terraform version.
```

---

## Terraform Validate

Expected result:

```text
Terraform validates the configuration successfully.
```

If not:

```text
Review resource names, variable names, missing braces, provider block, and unsupported arguments.
```

---

## Terraform Plan

Expected result:

```text
Terraform shows the compute instance that will be created.
```

If not:

```text
Review authentication, compartment OCID, subnet OCID, image OCID, availability domain, region, and IAM permission.
```

---

## Terraform Apply

Expected result:

```text
OCI Compute instance is created successfully.
```

If not:

```text
Review service limits, shape availability, image compatibility, subnet, IAM permissions, and authentication.
```

---

## Terraform Output

Expected result:

```text
Instance ID, state, display name, and IP information are displayed.
```

If not:

```text
Review output names and whether the resource was created successfully.
```

---

## Final Review

The deployment should be reviewed as a complete flow:

```text
Provider -> Variables -> Compute Resource -> VNIC/Subnet -> Image/Shape -> Plan -> Apply -> Outputs
```

If one part is wrong, the deployment can fail even if the rest of the configuration looks correct.
