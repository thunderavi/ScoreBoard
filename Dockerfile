# Dockerfile for Client Frontend (cricket_frontend)
# Place this in: client/Dockerfile

FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose port
EXPOSE 5173

# Start Vite dev server with host flag to accept external connections
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]