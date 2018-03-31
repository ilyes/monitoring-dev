#!/bin/bash
#FROM  https://github.com/wkulhanek/docker-openshift-grafana.git
oc new-project grafana --display-name="Monitoring - Grafana Dashboards"
oc new-app -f grafana.yaml --param VOLUME_CAPACITY=10Gi --param IMAGE_GRAFANA=wkulhanek/grafana:5.0.4
