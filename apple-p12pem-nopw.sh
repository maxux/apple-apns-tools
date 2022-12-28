#!/bin/bash
[[ -z $1 ]] && (echo "Missing input file"; exit 1)

input="$1"

echo "[+] converting p12 to pem, without password"
echo "[+] converting ${input} to ${input}.pem"

openssl pkcs12 -in ${input} -out ${input}.crt.pem -clcerts -nokeys
openssl pkcs12 -in ${input} -out ${input}.key.pem -nocerts -nodes

cat ${input}.crt.pem ${input}.key.pem > ${input}.pem
