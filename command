docker image ls -a
docker container ls -a
docker image build . -t db
docker contanier rm id
docker image rm id
docker container run -itd -p 9999:3306 --name db_c db
mysql -u root -h localhost --port 9999 --protocol tcp -p
ifconfig



