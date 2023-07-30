gcloud container clusters get-credentials superset --region us-central1
helm repo add superset https://apache.github.io/superset
helm upgrade --install superset superset/superset --set bootstrapScript="pip install sqlalchemy-bigquery"
kubectl port-forward service/superset 8080:8088 --namespace default --address=0.0.0.0