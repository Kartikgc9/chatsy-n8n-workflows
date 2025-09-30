FROM n8nio/n8n:latest

# Switch to root to modify files
USER root

# Create workflow directory if it doesn't exist
RUN mkdir -p /home/node/.n8n/workflows

# Copy workflow files
COPY workflows/*.json /home/node/.n8n/workflows/

# Set proper ownership
RUN chown -R node:node /home/node/.n8n

# Switch back to node user
USER node

# Set working directory
WORKDIR /home/node

# Expose port
EXPOSE 5678

# Use the entrypoint from base image
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
CMD ["n8n"]
