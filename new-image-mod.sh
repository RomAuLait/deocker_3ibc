docker run --name my-nginx -p 8080:80 -d nginx
docker exec -it my-nginx bash
echo "<h1>Bonjour avec echo</h1>" > /usr/share/nginx/html/index.html
exit
docker commit my-nginx nginx-modifie
docker run --name nginx-bonjour -p 8081:80 -d nginx-modifie
