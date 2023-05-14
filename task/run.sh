docker build -t udv .
sudo docker run -d -p 80:80  --network=host --name udv-container udv
sleep 5;
curl http://localhost
ping 8.8.8.8
