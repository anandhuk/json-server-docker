# Use a newer Node.js version (LTS recommended)
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Make port 3000 available
EXPOSE 3000

# Run the app
CMD ["npm", "start"]