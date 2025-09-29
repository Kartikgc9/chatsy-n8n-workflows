FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy workflow files
COPY workflows/ /home/node/.n8n/workflows/

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
