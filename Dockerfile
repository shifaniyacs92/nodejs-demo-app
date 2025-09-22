# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install deps
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port and start app
EXPOSE 3000
CMD ["node", "server.js"]
