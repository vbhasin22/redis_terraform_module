# redis_terraform_module
A Terraform Template for AWS ElastiCache, specifically for redis

Input Variables
---------------

- `cluster_id` - Group identifier for the cluster
- `engine` - Defaults to "redis". Would update for memcached cluster
- `maintenance_window` - range for when maintenance on the cache cluster is performed
- `node_type` - compute and memory capacity of the nodes i.e. `cache.t2.micro`
- `num_cache_nodes` - For redis, this value must be 1
- `parameter_group_name` - Defaults to `default.redis3.2`
- `port` - Defaults to `6379` the default port for redis
- `subnet_group_name` - subnet group name for cache cluster
- `security_group_ids` - security group for the cache cluster
- `notification_topic_arn` - SNS topic to send ElastiCache notifications to

Application tagging
- `stack` - stack name for the cluster
- `OwnerContact` - OwnerContact for application

Outputs
-------

- `hostname` - cache node hostname
- `cache_security_group_id` - security group id
- `port` - cache node port

Usage
-----

You can use these in your terraform template with the following steps.

1.) Adding a module resource to your template, e.g. `main.tf`

```
module "my_redis_instance" {
  source = "git::https://github.com/vbhasin22/redis_terraform_module.git"

  #Redis Instance Inputs
  cluster_id = "${var.cluster_id}"
  maintenance_window = "${var.maintenance_window}"
  node_type = "${var.node_type}"
  num_cache_nodes = "${var.num_cache_nodes}"
  parameter_group_name = "${var.parameter_group_name}"
  port = "${var.port}"
  security_groups = "${var.security_groups}"
  subnets = "${var.subnets}"
  notification_topic_arn = "${var.notification_topic_arn}"

  #Instance Tagging Inputs
  stack = "${var.stack}"
  owner_contact = "${var.owner_contact}"
}
```

2.) Setting values for the following variables, either through
`terraform.tfvars`, `variables.tf`, or `-var` arguments on the CLI

- cluster_id
- maintenance_window
- node_type
- num_cache_nodes
- parameter_group_name
- port
- security_groups
- subnets
- notification_topic_arn
- stack
- owner_contact

Authors
=======

Created and maintained by [Vikram Bhasin](mailto:v.bhasin1@gmail.com).
