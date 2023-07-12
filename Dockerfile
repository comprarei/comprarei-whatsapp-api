# Set the base image to Node 18
FROM node:18

# File Author / Maintainer
LABEL maintainer=thiago.roieski@comprarei.com.br"

# Update the repository sources list
RUN apt-get update && apt-get upgrade -y

# Install Chromium
RUN apt-get install -y chromium

# Set the working directory to /app
WORKDIR /

# Bundle your app source inside the docker image
COPY . .

# Install all the dependencies
RUN npm ci

# Build the API
RUN npm install 

# Your app binds to port 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 8080

# Set environment variable to disable Chromium's sandbox (this is required if you are running as root)
ENV CHROME_BIN=/usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_ARGS='--no-sandbox'

# Start command
CMD [ "node", "app.js" ] # again replace this with your specific node command to start your app/service