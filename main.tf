provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id = "${var.cluster_id}"
  engine = "redis"
  #engine_version = "${var.engine_version}"
  maintenance_window = "${var.maintenance_window}"
  node_type = "${var.node_type}"
  num_cache_nodes = "${var.num_cache_nodes}"
  parameter_group_name = "${var.parameter_group_name}"
  port = "${var.port}"
  subnet_group_name = "${aws_elasticache_subnet_group.default.name}"
  security_group_ids = ["${split(",", var.security_groups)}"]
  notification_topic_arn = "${var.notification_topic_arn}"
  tags {
    Stack = "${var.stack}"
    OwnerContact = "${var.owner_contact}"
  }
}

resource "aws_elasticache_subnet_group" "default" {
  name = "${var.cluster_id}-subnetgrp"
  description = "Redis subnet group"
  subnet_ids = ["${split(",", var.subnets)}"]
}
