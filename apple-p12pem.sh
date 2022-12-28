#!/bin/bash
[[ -z $1 ]] && (echo "Missing input file"; exit 1)

pass="xxxx"
input="$1"

echo "[+] converting p12 to pem, without password"
echo "[+] converting ${input} to ${input}.pem"

openssl pkcs12 -in ${input} -out ${input}.crt.pem -clcerts -nokeys -passin pass:$pass
openssl pkcs12 -in ${input} -out ${input}.key.pem -nocerts -nodes -passin pass:$pass

cat ${input}.crt.pem ${input}.key.pem > ${input}.pem
