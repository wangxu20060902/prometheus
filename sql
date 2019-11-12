(100- (avg by(instance, type, project) (irate(node_cpu{job=\"middleware_node_exporter\", type=\"mysql\", project=\"avacar\", mode=\"idle\"}[5m]))* 100))"
http://grafana.prodapps.ocp.csvw.com/dashboard/db/aavacar-middlewares-monitor?refresh=5s&panelId=48&fullscreen&orgId=5
