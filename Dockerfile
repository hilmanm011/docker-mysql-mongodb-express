# Gunakan Node.js LTS sebagai base image
FROM node:lts-hydrogen

# Atur environment ke development
ENV NODE_ENV=development
ENV PORT=4000

# Setel direktori kerja dalam kontainer
WORKDIR ./express-mysql-mongodb-docker

# Salin file package.json dan package-lock.json ke dalam kontainer
COPY ["package.json", "package-lock.json", "./"]

# Install dependencies
RUN npm install

# Salin seluruh isi proyek ke dalam kontainer
COPY . .

# Install mysql-client untuk koneksi database (opsional)
# RUN apt-get update && apt-get install -y mysql-client

# Setel variabeSl lingkungan untuk MySQL

ENV BASE_API=http://localhost:4000/
# ENV DB_DIALECT=mysql
# ENV DB_HOST=127.0.0.1
# ENV DB_PORT=3306
# ENV DB_DATABASE=eigen
# ENV DB_USERNAME=root
# ENV DB_PASSWORD=123
# ENV DB_POOL_MAX=5
# ENV DB_POOL_MIN=0
# ENV DB_POOL_ACQUIRE=30000
# ENV DB_POOL_IDLE=10000

# Command untuk menjalankan aplikasi
CMD ["npm", "start"]