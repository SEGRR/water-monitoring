FROM nodered/node-red:latest

# Copy the flows.json file into the Node-RED user directory
COPY flows.json /data/flows.json

# Install any additional Node-RED nodes if needed (optional)
# RUN npm install node-red-node-<package>
RUN npm install node-red-node-mongodb
# Expose the default Node-RED port
EXPOSE 1880

# Start Node-RED
CMD ["npm", "start", "--", "--userDir", "/data"]
