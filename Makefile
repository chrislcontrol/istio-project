install-addons:
	- kubectl apply -f istio/addons

run-kiali:
	- @echo "Kiali"
	- istioctl dashboard kiali

run-jaeger:
	- @echo "Jaeger"
	- istioctl dashboard jaeger

run-grafana:
	- @echo "Grafana"
	- istioctl dashboard grafana
	
run-prometheus:
	- @echo "Prometheus"
	- istioctl dashboard prometheus
	
run-dashboards:
	- make run-kiali & make run-jaeger & make run-grafana & make run-prometheus &

stop-dashboards:
	- pkill -f 'istioctl dashboard kiali'
	- pkill -f 'istioctl dashboard jaeger'
	- pkill -f 'istioctl dashboard grafana'
	- pkill -f 'istioctl dashboard prometheus'
