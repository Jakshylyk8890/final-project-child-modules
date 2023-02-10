## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.bastion](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2-sg"></a> [ec2-sg](#input\_ec2-sg) | ID of the security group | `string` | `""` | no |
| <a name="input_ec2_type"></a> [ec2\_type](#input\_ec2\_type) | Bastion instance type | `string` | `"t2.micro"` | no |
| <a name="input_env"></a> [env](#input\_env) | specified resources enviroment | `string` | n/a | yes |
| <a name="input_public_subnet"></a> [public\_subnet](#input\_public\_subnet) | CIDR of the public subnet | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2"></a> [ec2](#output\_ec2) | output of instance id |
