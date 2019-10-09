output "ecs_cluster_arn" {
  value       = aws_ecs_cluster.cluster.arn
  description = "The ARN of this cluster"
}

output "ecs_cluster_id" {
  value       = aws_ecs_cluster.cluster.id
  description = "The ARN of this cluster"
}

output "ecs_nodes_role_arn" {
  value       = aws_iam_role.ec2-role.arn
  description = "The ARN of the ec2 role for the cluster nodes"
}

output "ecs_nodes_role_id" {
  value       = aws_iam_role.ec2-role.id
  description = "The ID of the ec2 role for the cluster nodes"
}
