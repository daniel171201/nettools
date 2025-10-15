# Docker Network Tools

A lightweight multi-architecture Docker image based on Alpine Linux that includes essential networking tools for debugging and troubleshooting. Supports both AMD64 and ARM64 architectures.

## 🛠 Included Tools

- `curl`: Transfer data from or to a server
- `iputils`: Collection of network utilities including:
  - `ping`: Test network connectivity
  - `tracepath`: Trace network path
  - `arping`: Send ARP requests
- `bind-tools`: DNS utilities including:
  - `dig`: DNS lookup utility
  - `nslookup`: Query DNS servers
- `net-tools`: Network configuration tools including:
  - `netstat`: Network statistics
  - `route`: IP routing table utility
  - `arp`: ARP table management
- `nmap`: Network exploration and security scanning
- `traceroute`: Print the route packets trace to a network host
- `mtr`: Network diagnostic tool combining ping and traceroute
- `tcpdump`: Network packet analyzer

## 🚀 Quick Start

Pull and run the container:

```bash
# Pull the image
docker pull ghcr.io/daniel171201/nettools:latest

# Run interactively
docker run -it --rm ghcr.io/daniel171201/nettools:latest
```

## 🏗 Building Locally

To build the image locally:

```bash
# Clone the repository
git clone https://github.com/daniel171201/docker_nettools.git
cd docker_nettools

# Build with Docker
docker build -t nettools .

```

For multi-architecture build:

```bash
# Using Docker
docker buildx build --platform linux/amd64,linux/arm64 -t nettools .

```

## 🚢 Running in Kubernetes

You can run this container as a temporary pod in your Kubernetes cluster for network debugging:

```bash
# Run an interactive pod
kubectl run nettools --rm -i --tty --image ghcr.io/daniel171201/nettools:latest
```
The pod will be automatically deleted when you exit the shell.
