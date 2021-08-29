docker network create my-network
docker run -dit --name containerA --network my-network busybox
docker run -dit --name containerB --network my-network busybox
docker attach containerA