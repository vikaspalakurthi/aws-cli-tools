
#This script gets the list of all instances matching the filters.json file and outputs 
# only the server's IP address and Name(tag:key and tag:value) of the server
aws ec2 describe-instances --filters file://filters.json --query 'Reservations[*].Instances[*].[PrivateIpAddress,Tags[?Key==`Name`].Value]'
