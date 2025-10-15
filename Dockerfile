# Specify platform architecture in build args
ARG TARGETARCH

# Base image - specify the operating system and version
FROM --platform=$TARGETPLATFORM alpine:3.22.2

# Maintainer information
LABEL maintainer="daniel1235179@gmail.com"
# Maintainer name
LABEL maintainer.name="Daniel Saiz"

# Define package list variable for easy editing
ARG PACKAGES="curl iputils bind-tools net-tools nmap traceroute mtr tcpdump bind-tools"

# Define entrypoint command variable for easy editing
ARG ENTRYPOINT_CMD="/bin/ash"

# Update package index and install required packages
RUN apk update && for pkg in $PACKAGES; do apk add --no-cache $pkg || echo "Package $pkg not found, continuing..."; done

# Switch to non-root user
USER root

# Default command to run when container starts
CMD sh -c "$ENTRYPOINT_CMD"