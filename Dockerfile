# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di container
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menginstal dependencies untuk  aplikasi
RUN npm install

# Ekspos port 3001 yang digunakan oleh aplikasi
EXPOSE 3001

# Perintah untuk menjalankan aplikasi  
CMD ["node", "index.js"]