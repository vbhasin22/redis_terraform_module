variable "aws_region" {
  description = "This is the AWS region."
  default = "us-east-1"
}

variable "cluster_id" {
  description = "This is the identifier of the cluster"
}

# variable "engine_version" {
#   description = "This is to choose between the cache engine (Redis/Memcache)"
# }

variable "maintenance_window" {
  description = "This is the maintenance time of the cluster"
}

variable "node_type" {
  description = "This is the size of the cache"
}

variable "num_cache_nodes" {
  description = "This is the number of cache nodes"
}

variable "parameter_group_name" {
  description = "This is to choose what version of cache to use (default.redis2.8/default.redis2.6/default.memcached1.4)"
}

variable "port" {
  description = "This is the port connection"
  default = "6379"
}

variable "security_groups" {
  description = "This is the security groups to use to create the elasticache"
}

variable "stack" {
  description = "stack name for the cluster"
}

variable "owner_contact" {
  description = "Owner contact of the application"
}

variable "subnets" {
  description = "This is the subnets to use to create the elasticache"
}

variable "notification_topic_arn" {
  description = "This is the arn for SNS topic notification"
}
