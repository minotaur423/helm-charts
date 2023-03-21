# Create SealedSecret for the P12 file
kubectl -n elasticsearch create secret generic elastic-certificate-pem --from-file=elastic-certificates.p12 --dry-run=client -o yaml > SealedSecret-ElasticCertificates.yaml
