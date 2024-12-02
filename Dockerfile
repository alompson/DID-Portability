# Use the ACA-py image from Docker Hub (bcgovimages repo)
FROM bcgovimages/aries-cloudagent:py3.12_1.0.1

# Switch to root user to install additional packages
USER root

# Install jq and other dependencies if needed
RUN apt-get update && apt-get install -y jq
# RUN pip install debugpy


# Switch back to the original user (if applicable)
USER aca-py

# Expose default ports
EXPOSE 8020 8031

# Command to run ACA-py agent
CMD ["aca-py", "start", "--admin-insecure-mode", "--inbound-transport", "http", "0.0.0.0", "8020", "--outbound-transport", "http", "--admin", "0.0.0.0", "8031", "--auto-provision"]
