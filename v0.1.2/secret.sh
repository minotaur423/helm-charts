kubectl -n elasticsearch create secret generic elastic-credentials --from-literal=ELASTIC_PASSWORD='testPass' --dry-run=client -o yaml > SealedSecret-ElasticCredentials.yaml
