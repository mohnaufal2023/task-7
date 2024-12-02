# Gunakan Node.js sebagai image dasar
FROM node:16

# Tetapkan direktori kerja
WORKDIR /app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Instal dependensi
RUN npm install

# Salin semua file project ke dalam container
COPY . .

# Build aplikasi
RUN npm run build

# Gunakan "serve" untuk menyajikan file statis hasil build
RUN npm install -g serve
CMD ["serve", "-s", "build"]

# Ekspos port untuk server
EXPOSE 3000
