# Use the official Node.js 14 image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /src

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files to the container
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port your application is listening on (default is 3000)
EXPOSE 3000

# Run the Next.js application
CMD ["npm", "start"]
