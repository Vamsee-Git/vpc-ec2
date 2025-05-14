# vpc-ec2
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.11.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | ./modules/alb | n/a |
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | ./modules/security_group | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID to use for the EC2 instance. | `string` | `"ami-04f7a54071e74f488"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type. | `string` | `"t3.medium"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name of the key pair to use for the EC2 instance. | `string` | `"MyKeyPair"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->