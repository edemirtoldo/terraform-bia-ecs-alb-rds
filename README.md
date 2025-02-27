# terraform-bia-ecs-alb-rds

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | ~> 5.53  |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | 5.86.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                               | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_autoscaling_group.ecs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group)                                         | resource    |
| [aws_cloudwatch_log_group.ecs_bia_web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group)                           | resource    |
| [aws_db_instance.bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance)                                                     | resource    |
| [aws_db_subnet_group.bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group)                                             | resource    |
| [aws_ecr_repository.bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository)                                               | resource    |
| [aws_ecs_capacity_provider.bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider)                                 | resource    |
| [aws_ecs_cluster.cluster-bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster)                                             | resource    |
| [aws_ecs_cluster_capacity_providers.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers)              | resource    |
| [aws_ecs_service.bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service)                                                     | resource    |
| [aws_ecs_task_definition.bia-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition)                                 | resource    |
| [aws_iam_instance_profile.ecs_node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile)                              | resource    |
| [aws_iam_instance_profile.role_acesso_ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile)                       | resource    |
| [aws_iam_policy.get_secret_bia_db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                         | resource    |
| [aws_iam_role.ecs_instance_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                             | resource    |
| [aws_iam_role.ecs_task_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                 | resource    |
| [aws_iam_role.role_acesso_ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                               | resource    |
| [aws_iam_role_policy_attachment.ecr_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                | resource    |
| [aws_iam_role_policy_attachment.ecs_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                | resource    |
| [aws_iam_role_policy_attachment.ecs_instance_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)  | resource    |
| [aws_iam_role_policy_attachment.ecs_task_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)      | resource    |
| [aws_iam_role_policy_attachment.role_acesso_ssm_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)    | resource    |
| [aws_iam_role_policy_attachment.s3_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                 | resource    |
| [aws_iam_role_policy_attachment.secrets_manager_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)    | resource    |
| [aws_iam_role_policy_attachment.ssm_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                | resource    |
| [aws_iam_role_policy_attachment.ssm_managed_instance_core](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource    |
| [aws_instance.bia_dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)                                                       | resource    |
| [aws_launch_template.ecs_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template)                                         | resource    |
| [aws_lb.bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb)                                                                       | resource    |
| [aws_lb_listener.bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener)                                                     | resource    |
| [aws_lb_target_group.tg-bia](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group)                                          | resource    |
| [aws_security_group.bia_alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                           | resource    |
| [aws_security_group.bia_db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                            | resource    |
| [aws_security_group.bia_dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                           | resource    |
| [aws_security_group.bia_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                           | resource    |
| [aws_security_group.bia_web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                           | resource    |
| [aws_iam_policy_document.ecs_instance_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                    | data source |
| [aws_iam_policy_document.ecs_task_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                        | data source |
| [aws_secretsmanager_secret.bia_db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret)                           | data source |
| [aws_ssm_parameter.ecs_node_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                                     | data source |

## Inputs

| Name                                                                     | Description                      | Type     | Default        | Required |
| ------------------------------------------------------------------------ | -------------------------------- | -------- | -------------- | :------: |
| <a name="input_instance_name"></a> [instance_name](#input_instance_name) | Nome da instance ec2 de trabalho | `string` | `"bia-dev-tf"` |    no    |

## Outputs

| Name                                                                                                        | Description            |
| ----------------------------------------------------------------------------------------------------------- | ---------------------- |
| <a name="output_alb_url"></a> [alb_url](#output_alb_url)                                                    | n/a                    |
| <a name="output_bia_repo_url"></a> [bia_repo_url](#output_bia_repo_url)                                     | n/a                    |
| <a name="output_instance_id"></a> [instance_id](#output_instance_id)                                        | ID da EC2              |
| <a name="output_instance_public_id"></a> [instance_public_id](#output_instance_public_id)                   | IP publico da EC2      |
| <a name="output_instance_security_groups"></a> [instance_security_groups](#output_instance_security_groups) | SG da EC2              |
| <a name="output_instance_type"></a> [instance_type](#output_instance_type)                                  | Tipo da EC2            |
| <a name="output_rds_endpoint"></a> [rds_endpoint](#output_rds_endpoint)                                     | Endpoint do RDS da BIA |
| <a name="output_rds_secret_name"></a> [rds_secret_name](#output_rds_secret_name)                            | Nome do meu segredo    |

<!-- END_TF_DOCS -->
