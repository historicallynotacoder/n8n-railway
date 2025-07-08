FROM n8nio/n8n:latest

# Create data volume for persistence
VOLUME /data

# Set environment
ENV N8N_USER_FOLDER=/data
