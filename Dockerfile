# Use the official Redis image as the base
FROM redis:latest

# Copy the initialization script
COPY init_data.sh /data/init_data.sh

# Make the script executable
RUN chmod +x /data/init_data.sh

# Start Redis with the initialization script
CMD ["redis-server", "--appendonly", "yes"]
