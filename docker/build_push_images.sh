# Membuat Docker image dari Dockerfile yang tadi dibua
docker build -t item-app:v1 .

# Cek docker images
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 arifsaputra/item-app:v1

# cek docker images
docker images

# Login ke Docker Hub
docker login

# Mengunggah image ke Docker Hub
docker push arifsaputra/item-app:v1