kubectl -n elasticsearch exec -ti elasticsearch-0 -- bash
 
# Create certificates
elasticsearch-certutil ca --out /tmp/elastic-stack-ca.p12 --pass ''
elasticsearch-certutil cert --name security-master --dns security-master --ca /tmp/elastic-stack-ca.p12 --pass '' --ca-pass '' --out /tmp/elastic-certificates.p12
 
# copy certificates to local machine
sudo kubectl cp elasticsearch/elasticsearch-0:/tmp/elastic-stack-ca.p12 ./elastic-stack-ca.p12
sudo kubectl cp elasticsearch/elasticsearch-0:/tmp/elastic-certificates.p12 ./elastic-certificates.p12
 
# Validate and extract PEM
openssl pkcs12 -nodes -passin pass:'' -in elastic-certificates.p12 -out elastic-certificate.pem
