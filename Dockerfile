# Use the default Codespace base image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install basic tools
RUN apt-get update && \
    apt-get install -y git curl nano && \
    rm -rf /var/lib/apt/lists/*

# Set up prompt and other environment customizations (optional)
RUN echo "PS1='[\u@\h \W]\$ '" >> /root/.bashrc
