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
| [aws_eip.elastic_ip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.natgw-js](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.priv-rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.js-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.priv1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.pub1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.jeks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | specified resources enviroment | `string` | `"𝒋𝒂𝒌𝒔"` | no |
| <a name="input_ingress"></a> [ingress](#input\_ingress) | n/a | `list` | <pre>[<br>  "0"<br>]</pre> | no |
| <a name="input_private_subnet_cidr"></a> [private\_subnet\_cidr](#input\_private\_subnet\_cidr) | CIDR of the private subnets | `list` | <pre>[<br>  "10.5.4.0/24",<br>  "10.5.5.0/24",<br>  "10.5.6.0/24"<br>]</pre> | no |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | CIDR of the public subnets | `list` | <pre>[<br>  "10.5.1.0/24",<br>  "10.5.2.0/24",<br>  "10.5.3.0/24"<br>]</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR | `string` | `"10.5.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_subnet"></a> [aws\_subnet](#output\_aws\_subnet) | output of public subnet id |
| <a name="output_aws_vpc"></a> [aws\_vpc](#output\_aws\_vpc) | output of vpc id |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | output of private subnet id |
| <a name="output_sg-for-bastion-host"></a> [sg-for-bastion-host](#output\_sg-for-bastion-host) | output of security group |
