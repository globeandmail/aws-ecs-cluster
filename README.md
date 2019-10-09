
# aws-ecs-cluster
A modified version of https://github.com/springload/terraform-aws-ecs-cluster

## Usage

```hcl
module "ecs-cluster" {
  source = "github.com/globeandmail/aws-ecs-cluster?ref=1.0"

  cluster_name       = my-ecs-cluster
  instance_type      = var.instance_type
  subnet_ids         = var.subnet_ids
  security_group_ids = var.security_group_ids
  vpc_id             = var.vpc_id
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name | Name of the ECS cluster | string | n/a | yes |
| ami | Name of the AMI image to use | string | `"amzn2-ami-ecs-hvm-*-x86_64-ebs"` | no |
| cpu\_unlimited | Whether or not enable t2/t3 cpu unlimited \(if true, might incur additional charges\) | string | `"false"` | no |
| ec2\_key\_name | EC2 key name to attach to newly created EC2 instances | string | `""` | no |
| instance\_type | EC2 instance type | string | `"t3.micro"` | no |
| instances\_desired | Number of EC2 instances desired | string | `"1"` | no |
| security\_group\_ids | list of security group IDs | list | `[]` | no |
| spot | Whether or not use Spot instances. Warning: most likely not suitable for production! | string | `"false"` | no |
| subnet\_ids | list of subnet IDs | list | `[]` | no |
| tags | AWS tags | map | `{}` | no |
| vpc\_id | VPC id to use | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| ecs\_cluster\_arn | The ARN of this cluster |
| ecs\_cluster\_id | The ARN of this cluster |
| ecs\_nodes\_role\_arn | The ARN of the ec2 role for the cluster nodes |
| ecs\_nodes\_role\_id | The ID of the ec2 role for the cluster nodes |
