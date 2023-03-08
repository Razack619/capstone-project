# Use an official Node runtime as a parent image
FROM node:14.17.5-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Build the React app
RUN npm run build

# Expose port 80 to the host machine
EXPOSE 80

# Start the application
CMD ["npm", "start"]

