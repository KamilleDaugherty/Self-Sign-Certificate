# request for new client certificate 
openssl req -new -nodes -newkey rsa:2048 -keyout private.key -out private.csr -subj "/C=US/ST=California/O=Google LLC."


# create actual certifate
# before this command much prepare domains.ext file
openssl x509 -req -sha256 -days 3650 -in private.csr -CA RootCA.pem -CAkey RootCA.key -CAcreateserial -extfile domains.ext -out public.crt

# -days = number of days will be valid
# -subj 
#     /C  = country name
#     /ST = state name
#     /O  = organization name
