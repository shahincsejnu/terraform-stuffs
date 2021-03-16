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

- `terraform`: to see the available commands:
    - ```
        The available commands for execution are listed below.
        The primary workflow commands are given first, followed by
        less common or more advanced commands.

        Main commands:
        init          Prepare your working directory for other commands
        validate      Check whether the configuration is valid
        plan          Show changes required by the current configuration
        apply         Create or update infrastructure
        destroy       Destroy previously-created infrastructure

        All other commands:
        console       Try Terraform expressions at an interactive command prompt
        fmt           Reformat your configuration in the standard style
        force-unlock  Release a stuck lock on the current workspace
        get           Install or upgrade remote Terraform modules
        graph         Generate a Graphviz graph of the steps in an operation
        import        Associate existing infrastructure with a Terraform resource
        login         Obtain and save credentials for a remote host
        logout        Remove locally-stored credentials for a remote host
        output        Show output values from your root module
        providers     Show the providers required for this configuration
        refresh       Update the state to match remote systems
        show          Show the current state or a saved plan
        state         Advanced state management
        taint         Mark a resource instance as not fully functional
        untaint       Remove the 'tainted' state from a resource instance
        version       Show the current Terraform version
        workspace     Workspace management

        Global options (use these before the subcommand, if any):
        -chdir=DIR    Switch to a different working directory before executing the
                        given subcommand.
        -help         Show this help output, or the help for a specified subcommand.
        -version      An alias for the "version" subcommand.

      ```
- `terraform refresh`: query infrastructure provider to get the current state
- `terraform plan`: create an execution plan to achieve the desired state that user defined in the terraform config file
- `terraform apply`: execute the plan
- `terraform destroy`: destroy the resources/infrastructure in the right order, removing element one by one, basically reverting everything that has been created






# Resources

- [x] [Terraform explained in 15 mins](https://www.youtube.com/watch?v=l5k1ai_GBDE)
- [ ] [Terraform Course - Automate your AWS cloud infrastructure](https://www.youtube.com/watch?v=SLB_c_ayRMo)
- [x] [Learn Terraform in 10 Minutes Tutorial](https://www.youtube.com/watch?v=UleogrJkZn0)
- [x] [Terraform Explained](https://www.youtube.com/watch?v=HmxkYNv1ksg)
- [x] [A Beginner's Guide to Terraform](https://www.linode.com/docs/guides/beginners-guide-to-terraform/)
- [x] [Introduction to HashiCorp Configuration Language (HCL)](https://www.linode.com/docs/guides/introduction-to-hcl/)
- [x] [Use Terraform to Provision Linode Environments](https://www.linode.com/docs/guides/how-to-build-your-infrastructure-using-terraform-and-linode/)
- [ ] [Linode Resources Description](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance)
- [ ] [Terraform Commands](https://www.terraform.io/docs/cli/commands/index.html)
- [x] [HCL necessary syntex](https://www.terraform.io/docs/language/syntax/configuration.html)
- [ ] [HCL official repo](https://github.com/hashicorp/hcl)
- [ ] [HCL Native Syntax Specification](https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md) 
- [ ] [Terraform Language Documentation](https://www.terraform.io/docs/language/index.html)
- [ ] [Create a Terraform Module](https://www.linode.com/docs/guides/create-terraform-module)
- [x] [Provisioners](https://www.youtube.com/watch?v=uPKwNPomeJo)
- [ ] [Provisioners doc](https://www.terraform.io/docs/language/resources/provisioners/syntax.html)

