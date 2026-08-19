# Compute Terraform Flow

This diagram shows a simple OCI Compute deployment flow using Terraform.

```mermaid
flowchart TD
    A[Terraform Configuration] --> B[OCI Provider]
    B --> C[Input Variables]
    C --> D[Compute Instance Resource]
    D --> E[VNIC Details]
    D --> F[Source Image Details]
    E --> G[Terraform Plan]
    F --> G
    G --> H[Terraform Apply]
    H --> I[OCI Compute Instance]
    I --> J[Outputs and Validation]
```

Terraform reads the configuration files and provider settings.

The provider connects to OCI. The variables provide environment-specific values. The compute instance resource defines the instance, VNIC, subnet, image, shape, and SSH key metadata.

---

## What I Understood

My main understanding is that Terraform should not be treated only as code to create resources.

The configuration should be reviewed before apply. The variable values, subnet, image, shape, and SSH key should be checked carefully because incorrect values can fail the deployment or create the instance in the wrong place.
