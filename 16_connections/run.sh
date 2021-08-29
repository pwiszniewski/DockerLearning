docker network create baza-net
docker run --name baza -v dane_bazy:/var/lib/postgresql/data -e POSTGRES_DB=mojabaza -e POSTGRES_USER=ja -e POSTGRES_PASSWORD=mojehaslo --network baza-net --detach postgres
docker run -p 8080:8080 --network baza-net adminer
