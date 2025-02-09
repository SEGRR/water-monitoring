docker run -it -p 1880:1888 --name node-red my-node-red

docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname