# Use Node.js LTS version as the base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package files first (for layer caching)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy everything else
COPY . .

# Expose the app's port
EXPOSE 4000

# Define default env (you’ll override it at runtime)
ENV PORT=4000

# Command to run the app
CMD ["npm", "start"]
