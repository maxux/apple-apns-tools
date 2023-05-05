# extract certificate
openssl pkcs12 -in Certificates.p12 -clcerts -nokeys -out passcertificate.pem

# extract private key
openssl pkcs12 -in Certificates-pk.p12 -nodes -nocerts -out passkey.pem

