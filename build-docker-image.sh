echo "TAG (example: filezilla:latest)"
read tag
sudo docker build -t $tag .
echo "Build finished"
