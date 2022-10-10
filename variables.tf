variable "anomaly_actions_enabled" {
  description = "Switch to enable anomaly actions (notifications). Default is false."
  type        = bool
  default     = false
}

variable "cpu_utilization_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "cpu_utilization_threshold" {
  description = "The maximum percentage of CPU utilization."
  type        = number
  default     = 90
}

variable "db_connections_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "db_connections_threshold" {
  description = "The total number of connections to the db."
  type        = number
  default     = 10000
}

variable "db_instance_id" {
  description = "The instance ID of the RDS database instance that you want to monitor."
  type        = string
  default     = ""
}

variable "db_load_cpu_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "db_load_cpu_threshold" {
  description = "The db load threshold, in percent."
  type        = number
  default     = 95
}

variable "db_load_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "db_load_non_cpu_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "db_load_non_cpu_threshold" {
  description = "The db load threshold, in percent."
  type        = number
  default     = 95
}

variable "db_load_threshold" {
  description = "The db load threshold, in percent."
  type        = number
  default     = 95
}

variable "deadlocks_per_second_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "deadlocks_per_second_threshold" {
  description = "The current value of mssql counter Number of Deadlocks/sec at this exact moment in time."
  type        = number
  default     = 10000
}

variable "disk_queue_depth_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "disk_queue_depth_threshold" {
  description = "The maximum number of outstanding IOs (read/write requests) waiting to access the disk."
  type        = number
  default     = 100
}

variable "failed_sql_server_agent_jobs_count_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "failed_sql_server_agent_jobs_count_threshold" {
  description = "The number of failed Microsoft SQL Server Agent jobs during the last minute."
  type        = number
  default     = 5
}

variable "free_storage_space_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "free_storage_space_threshold" {
  description = "The minimum amount of available storage space in Byte."
  type        = number
  default     = 2000000000

  # 2 Gigabyte in Byte
}

variable "freeable_memory_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "freeable_memory_threshold" {
  description = "The minimum amount of available random access memory in Byte."
  type        = number
  default     = 2147483648 #2GB in bytes
}

variable "implement_custom_metrics_alarms" {
  description = "Toggle for creating alarms on custom metrics. Namespace parameter must also be defined."
  type        = bool
  default     = false
}

variable "implement_anomaly_alarms" {
  description = "Toggle for creating alarms on anomaly models."
  type        = bool
  default     = false
}

variable "lock_waits_per_second_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "lock_waits_per_second_threshold" {
  description = "The value of the mssql counter Lock Waits/sec at this exact moment in time."
  type        = number
  default     = 10000
}

variable "namespace" {
  description = "The namespace within Cloudwatch where custom data is stored."
  type        = string
}

variable "network_receive_throughput_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "network_transmit_throughput_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "page_life_expectancy_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "page_life_expectancy_threshold" {
  description = "The value of the mssql counter Page life expectancy at this exact moment in time."
  type        = number
  default     = 10000
}

variable "read_iops_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "read_iops_threshold" {
  description = "Number of read IOPS."
  type        = number
  default     = 20000
}

variable "read_latency_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "read_latency_threshold" {
  description = "The read latency threshold, in seconds."
  type        = number
  default     = 30
}

variable "read_throughput_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "recompilations_per_second_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "recompilations_per_second_threshold" {
  description = "The current value of mssql counter SQL Re-Compilations/sec. This is a cumulative (instance lifetime) value."
  type        = number
  default     = 10000
}

variable "sns_topic_name" {
  description = "The name of the SNS topic to publish alerts to."
  type        = string
}

variable "swap_usage_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "swap_usage_threshold" {
  description = "The maximum amount of swap space used on the DB instance in Byte."
  type        = number
  default     = 100000000000
}

variable "tags" {
  description = "Tags to be added to all resources."
  type        = map(string)
  default     = {}
}

variable "temp_db_available_data_space_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "temp_db_available_data_space_threshold" {
  description = "The amount of temp db data space."
  type        = number
  default     = 1000000000 #1G
}

variable "temp_db_available_log_space_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "temp_db_available_log_space_threshold" {
  description = "The amount of temp db log space."
  type        = number
  default     = 1000000000 #1G
}

variable "temp_db_data_file_usage_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "temp_db_data_file_usage_threshold" {
  description = "The amount of temp db data space."
  type        = number
  default     = 5000
}

variable "temp_db_log_file_usage_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "temp_db_log_file_usage_threshold" {
  description = "The amount of temp db data space."
  type        = number
  default     = 5000
}

variable "write_iops_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "write_iops_threshold" {
  description = "Number of write IOPS."
  type        = number
  default     = 100000
}

variable "write_latency_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}

variable "write_latency_threshold" {
  description = "The write latency threshold, in seconds."
  type        = number
  default     = 100000
}

variable "write_throughput_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 10
}
