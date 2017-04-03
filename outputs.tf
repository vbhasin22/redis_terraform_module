output "cache_security_group_id" {
  value = "${aws_elasticache_cluster.redis.security_group_ids}"
}

output "hostname" {
  value = "${aws_elasticache_cluster.redis.cache_nodes.0.address}"
}

output "port" {
  value = "${aws_elasticache_cluster.redis.cache_nodes.0.port}"
}
