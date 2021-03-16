# Terraform Modules

## Basics

- Terraform uses a concept called modules to group common server requirements and configurations. Think of modules as similar to functions in programming languages.
 

## General Structure of Modules

- The module structure is flexible, so you can use as many Terraform files as needed to describe your infrastructure.

- General structure of a terrafom modules

```
.
├── client1
│   ├── main.tf
│   └── variables.tf
└── modules
    └── app-deployment
        ├── main.tf
        └── variables.tf

```

- This structure is not mandated by Terraform, but it is useful and simple