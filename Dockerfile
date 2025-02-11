FROM nodered/node-red:latest

# Copy the flows.json file into the Node-RED user directory
COPY flows.json /data/flows.json

# Install any additional Node-RED nodes if needed (optional)
# RUN npm install node-red-node-<package>
RUN npm install node-red-node-mongodb
RUN npm install node-red-contrib-mongodb3
RUN npm install mongodb
RUN npm install cloudinary
# Expose the default Node-RED port

COPY settings.js /data/settings.js

EXPOSE 1880

# Start Node-RED
CMD ["npm", "start", "--", "--userDir", "/data"]
