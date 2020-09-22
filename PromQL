###disk space usage
(((node_filesystem_size{device!~"tmpfs",mountpoint!="/boot",team="mos"}
  - node_filesystem_avail{device!~"tmpfs",mountpoint!="/boot",team="mos"})
  / node_filesystem_size{device!~"tmpfs",mountpoint!="/boot",team="mos"}))*100 or 
(((node_filesystem_size_bytes{device!~"tmpfs",mountpoint!="/boot",team="mos"}
  - node_filesystem_avail_bytes{device!~"tmpfs",mountpoint!="/boot",team="mos"})
  / node_filesystem_size_bytes{device!~"tmpfs",mountpoint!="/boot",team="mos"}))
 
 ##memory usage
 (node_memory_MemTotal{team="mos"}
  - node_memory_MemFree{team="mos"} - node_memory_Buffers{team="mos"}
  - node_memory_Cached{team="mos"} - node_memory_SwapCached{team="mos"}
  - node_memory_Slab{team="mos"} - node_memory_PageTables{team="mos"}
  - node_memory_VmallocUsed{team="mos"}) / node_memory_MemTotal{team="mos"}*100  or 
(node_memory_MemTotal_bytes{team="mos"}
 - node_memory_MemFree_bytes{team="mos"} - node_memory_Buffers_bytes{team="mos"}
 - node_memory_Cached_bytes{team="mos"} - node_memory_SwapCached_bytes{team="mos"}
 - node_memory_Slab_bytes{team="mos"} - node_memory_PageTables_bytes{team="mos"}
 - node_memory_VmallocUsed_bytes{team="mos"}) / node_memory_MemTotal_bytes{team="mos"}*100 
 
###cpu usage 

(100 - (avg by(instance,service_id,service_tags) (irate(node_cpu{mode="idle"}[5m])) * 100)) or 
(100 - (avg by(instance,service_id,service_tags) (irate(node_cpu_seconds_total{mode="idle",team="mos"}[5m])) * 100))

###cpu load15
sum(node_load15{team="mos"}) by (instance) / ((count(node_cpu{mode="system"}) by (instance)) or (count(node_cpu_seconds_total{mode="system"}) by (instance)))
