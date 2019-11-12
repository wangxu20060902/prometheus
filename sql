(100- (avg by(instance, type, project) (irate(node_cpu{job=\"middleware_node_exporter\", type=\"mysql\", project=\"avacar\", mode=\"idle\"}[5m]))* 100))"
