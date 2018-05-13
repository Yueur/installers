
imageName=local-custom/my-samba:16.04

sudo docker build --no-cache . -t $imageName

# -p 137:137 -p 138:138 -p 139:139 -p 445:445 

sudo docker run -id --name smb-server -p 137:137 -p 138:138 -p 139:139 -p 445:445  $imageName

