FROM alpine
LABEL nodar=test

# Install dependencies
RUN apk add pingu curl nginx 

# Copy entrypoint script into the container
COPY ./docker-entrypoint.sh /

# Ensure the entrypoint script is executable
RUN chmod +x /docker-entrypoint.sh

# Set the entrypoint for the container
ENTRYPOINT ["/docker-entrypoint.sh"]

# Set default command
CMD ["postgres"]
