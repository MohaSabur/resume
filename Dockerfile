# Build stage
FROM mohasaburr/resume-base-image:v0.1.1 AS build

# Set the working directory
WORKDIR /root

# Copy all files from the current directory to the working directory in the container
COPY . .

# Install project dependencies using pnpm
RUN pnpm install

# Build the project
RUN pnpm build

# Production stage
FROM nginx:alpine

# Copy the built index.html from the build stage to the Nginx HTML directory
COPY --from=build /root/dist/index.html /usr/share/nginx/html/index.html

# Copy the built index.pdf from the build stage to the Nginx HTML directory
COPY --from=build /root/dist/resume.pdf /usr/share/nginx/html/resume.pdf

# Expose port 80 for HTTP traffic
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
