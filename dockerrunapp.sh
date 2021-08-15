echo "
Call app by 
  1. Getting ip address of container
     a. docker ps to get container id 
     b. docker-ip <container id> to get ip address of container
        i. docker-ip is defined in ~/.bashrc

   2. http://<container ip addr>:5000
"

# Have -p 5000:5000 just to make it explicit for me.
docker run -p 5000:5000 -it neighborlyapp:v1 app.py