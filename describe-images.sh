#This script gets the list of images matching the filters in image-ids.json file and outputs 
# only the ImageID,IsPublic and Name of the image as per the query below in a table format.
aws ec2 describe-images --filters file://image-ids.json --query 'Images[*].{ID:ImageId,IP:Public,NM:Name}' --output table
