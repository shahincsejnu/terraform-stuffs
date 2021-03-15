# terraform-stuffs

## Basics of Terraform

- Terraform is an OpenSource tool, developed by HashiCorp
- Terraform is a tool for infrastructure provisioning
- It allows you to automate and manage your:
    - infrastructure
    - platform
    - and services that run on that platform
- It's OpenSource
- It uses `Declarative` language, meaning:
    - define what end result you want
    - do not need to tell the steps how to do/achieve that end result
    - just only tell what you want, not the steps of doing that like other imperative programming language
    - terraform self will figure out how to execute this
    - it's not like `Imperative`(= define exact steps - How)


## Terraform Commands

- `terraform refresh`: query infrastructure provider to get the current state
- `terraform plan`: create an execution plan to achieve the desired state that user defined in the terraform config file
- `terraform apply`: execute the plan
- `terraform destroy`: destroy the resources/infrastructure in the right order, removing element one by one, basically reverting everything that has been created



# Resources

- [x] [Terraform explained in 15 mins](https://www.youtube.com/watch?v=l5k1ai_GBDE)
- [ ] [Terraform Course - Automate your AWS cloud infrastructure](https://www.youtube.com/watch?v=SLB_c_ayRMo)
- [x] [Learn Terraform in 10 Minutes Tutorial](https://www.youtube.com/watch?v=UleogrJkZn0)
- [x] [Terraform Explained](https://www.youtube.com/watch?v=HmxkYNv1ksg)
