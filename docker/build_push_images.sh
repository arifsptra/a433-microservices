# Membuat Docker image dari Dockerfile yang tadi dibua
arif@arif:~/Projects/a433-microservices$ sudo docker build -t item-app:v1 .
# [+] Building 78.3s (9/9) FINISHED                                                                                                                                                   docker:default
#  => [internal] load build definition from Dockerfile                                                                                                                                          0.0s
#  => => transferring dockerfile: 590B                                                                                                                                                          0.0s
#  => [internal] load .dockerignore                                                                                                                                                             0.0s
#  => => transferring context: 88B                                                                                                                                                              0.0s
#  => [internal] load metadata for docker.io/library/node:14                                                                                                                                    0.0s
#  => [1/4] FROM docker.io/library/node:14                                                                                                                                                      0.0s
#  => [internal] load build context                                                                                                                                                             0.0s
#  => => transferring context: 3.38kB                                                                                                                                                           0.0s
#  => CACHED [2/4] WORKDIR /app                                                                                                                                                                 0.0s
#  => [3/4] COPY . .                                                                                                                                                                            0.0s
#  => [4/4] RUN npm install --production --unsafe-perm && npm run build                                                                                                                        77.8s
#  => exporting to image                                                                                                                                                                        0.4s 
#  => => exporting layers                                                                                                                                                                       0.4s 
#  => => writing image sha256:04cd1ea80db0f112680edb4786d918e73ce7df092ded62c5e7c6abfbd279c28b                                                                                                  0.0s 
#  => => naming to docker.io/library/item-app:v1                                                                                                                                                0.0s 
                                                                                                                                                                                                   
# What's Next?                                                                                                                                                                                       
#   View summary of image vulnerabilities and recommendations → docker scout quickview

# Cek docker images
arif@arif:~/Projects/a433-microservices$ sudo docker images
# REPOSITORY   TAG         IMAGE ID       CREATED         SIZE
# item-app     v1          04cd1ea80db0   4 minutes ago   949MB
# item-app     latest      8c3a0f20f49a   2 hours ago     949MB
# todo-app     v2          2a2be9a41991   7 days ago      407MB
# todo-app     v1          105327179019   8 days ago      407MB
# mysql        5.7         3b85be0b10d3   3 months ago    581MB
# node         14          1d12470fa662   6 months ago    912MB
# node         12-alpine   bb6d28039b8c   18 months ago   91MB
# mongo        3           2f21415cb85f   2 years ago     453MB

# Mengubah nama image agar sesuai dengan format Docker Hub
arif@arif:~/Projects/a433-microservices$ sudo docker tag item-app:v1 arifsaputra/item-app:v1

# cek docker images
arif@arif:~/Projects/a433-microservices$ sudo docker images
# REPOSITORY             TAG         IMAGE ID       CREATED         SIZE
# arifsaputra/item-app   v1          04cd1ea80db0   8 minutes ago   949MB
# item-app               v1          04cd1ea80db0   8 minutes ago   949MB
# item-app               latest      8c3a0f20f49a   2 hours ago     949MB
# todo-app               v2          2a2be9a41991   7 days ago      407MB
# todo-app               v1          105327179019   8 days ago      407MB
# mysql                  5.7         3b85be0b10d3   3 months ago    581MB
# node                   14          1d12470fa662   6 months ago    912MB
# node                   12-alpine   bb6d28039b8c   18 months ago   91MB
# mongo                  3           2f21415cb85f   2 years ago     453MB

# Login ke Docker Hub
arif@arif:~/Projects/a433-microservices$ sudo docker login
# Log in with your Docker ID or email address to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com/ to create one.
# You can log in with your password or a Personal Access Token (PAT). Using a limited-scope PAT grants better security and is required for organizations using SSO. Learn more at https://docs.docker.com/go/access-tokens/

# Username: arifsaputra
# Password: 
# WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
# Configure a credential helper to remove this warning. See
# https://docs.docker.com/engine/reference/commandline/login/#credentials-store

# Login Succeeded

# Logging in with your password grants your terminal complete access to your account. 
# For better security, log in with a limited-privilege personal access token. Learn more at https://docs.docker.com/go/access-tokens/

# Mengunggah image ke Docker Hub
arif@arif:~/Projects/a433-microservices$ sudo docker push arifsaputra/item-app:v1
# The push refers to repository [docker.io/arifsaputra/item-app]
# 2b8f5ba2fd24: Preparing 
# b6c6883492d4: Preparing 
# 2b8f5ba2fd24: Pushed 
# 0d5f5a015e5d: Mounted from library/node 
# 3c777d951de2: Mounted from library/node 
# f8a91dd5fc84: Mounted from library/node 
# cb81227abde5: Mounted from library/node 
# e01a454893a9: Mounted from library/node 
# c45660adde37: Mounted from library/node 
# fe0fb3ab4a0f: Mounted from library/node 
# f1186e5061f2: Mounted from library/node 
# b2dba7477754: Mounted from library/node 
# v1: digest: sha256:b135a0a10949e7b147fcb8c2ff6123fc7c29c0f6aa345562a96ec5b8b62716e1 size: 2844