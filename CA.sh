openssl req -x509 -nodes -new -sha256 -days 3650 -newkey rsa:2048 -keyout RootCA.key -out RootCA.pem -subj "/C=US/ST=California/O=Google LLC." 
openssl x509 -outform pem -in RootCA.pem -out ca.crt


# -days = number of days will be valid
# -subj 
#     /C  = country name
#     /ST = state name
#     /O  = organization name
