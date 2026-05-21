# --- Stage 1: Build stage ---
FROM node:18-alpine
WORKDIR /usr/src/app

# Copy configuration and package files
COPY package*.json ./

# Install all dependencies (including compiler)
RUN npm install

# Copy source code
COPY . .


# Expose port 5000
EXPOSE 5000

# Run the compiled JavaScript entry point
CMD [ "node", "src/server.js" ]