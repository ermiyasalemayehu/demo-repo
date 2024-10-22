 Use the official Node.js image as the base image 
FROM node:14

# Set the working directory inside the container 

WORKDIR /app

# Copy package.json and package-lock.json files to install dependencies 

COPY package*.json ./

#  Install nodemon globally and other dependencies 

RUN npm install && npm install -g nodemon

# Copy the rest of the application code to the container 

COPY . .

# Change ownership of the working directory (sometimes permission issues occur d>

RUN chown -R node:node /app

# Expose the port your app runs on (assuming it's 3000) 

EXPOSE 3000
