output "elasticsearch_synonym_sets_id" {
  description = "Map of id values across all elasticsearch_synonym_sets, keyed the same as var.elasticsearch_synonym_sets except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_synonym_set.elasticsearch_synonym_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_synonym_sets_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_synonym_sets, keyed the same as var.elasticsearch_synonym_sets except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_synonym_set.elasticsearch_synonym_sets : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_synonym_sets_synonym_set_id" {
  description = "Map of synonym_set_id values across all elasticsearch_synonym_sets, keyed the same as var.elasticsearch_synonym_sets except keys with no synonym_set_id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_synonym_set.elasticsearch_synonym_sets : k => v.synonym_set_id if v.synonym_set_id != null && length(v.synonym_set_id) > 0 }
}
output "elasticsearch_synonym_sets_synonyms_set" {
  description = "Map of synonyms_set values across all elasticsearch_synonym_sets, keyed the same as var.elasticsearch_synonym_sets except keys with no synonyms_set are omitted"
  value       = { for k, v in elasticstack_elasticsearch_synonym_set.elasticsearch_synonym_sets : k => v.synonyms_set if v.synonyms_set != null && length(v.synonyms_set) > 0 }
}

