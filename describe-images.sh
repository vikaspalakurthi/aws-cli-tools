
aws ec2 describe-images --filters file://image-ids.json --query 'Images[*].{ID:ImageId,IP:Public,NM:Name}' --output table
