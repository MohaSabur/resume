# Build stage
FROM node:20 AS build

# Update package lists
RUN apt-get update -y

# Install necessary libraries
RUN apt-get install -y libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxrandr2 libgbm1 libpango-1.0-0 libasound2 libatspi2.0-0 libpangocairo-1.0-0 libxshmfence1 libxrender1 libxfixes3 -y

# Install pnpm globally
RUN npm install -g pnpm