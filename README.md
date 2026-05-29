# Presearch Node on Ubuntu VPS (Docker)

## Overview

This project documents my experience deploying, monitoring, and maintaining Dockerized Presearch Nodes across multiple Ubuntu-based VPS providers over a long period of time.

The nodes run inside Docker containers using the official Presearch image, with persistent storage and automatic restart configurations to ensure service reliability and high availability.

This project demonstrates practical experience with:

* Linux server administration
* Docker container management
* Cloud VPS environments
* Long-term service uptime
* Infrastructure monitoring and maintenance
* Remote server management over SSH

---

# Technologies Used

* Ubuntu Server
* Docker
* Oracle Cloud Infrastructure (OCI)
* Racknerd VPS
* Linux CLI / Bash
* SSH Remote Administration
* htop
* Docker Logs & Monitoring Tools

---

# Architecture

```text
Internet
   │
   ▼
Ubuntu VPS (Oracle Cloud / Racknerd)
   │
   ▼
Docker Engine
   │
   ▼
Presearch Node Container
   │
   ▼
Persistent Docker Volume
```

---

# VPS Providers Used

* Oracle Cloud Infrastructure (OCI)
* Racknerd VPS

---

# Environment Details

| Component         | Details                         |
| ----------------- | ------------------------------- |
| Operating System  | Ubuntu Server                   |
| Container Runtime | Docker                          |
| Service           | Presearch Node                  |
| Access Method     | SSH                             |
| Monitoring Tools  | htop, docker stats, docker logs |

---

# Skills Demonstrated

* Linux (Ubuntu) server administration
* Docker container deployment and lifecycle management
* Managing multiple VPS environments
* Persistent storage using Docker volumes
* Networking and container configuration
* Long-term uptime monitoring
* Troubleshooting Docker containers and Linux services
* Running and maintaining distributed, production-like services
* Remote infrastructure management using SSH

---

# Deployment Approach

* Multiple nodes deployed across different VPS providers
* Each node runs inside an isolated Docker container
* Persistent storage configured using Docker volumes
* Automatic restart enabled using Docker restart policies
* Services monitored periodically for uptime and stability

---

# Quick Deployment

Clone the repository:

```bash
git clone https://github.com/gagansingh29/presearch-node-vps.git
cd presearch-node-vps
```

Make the deployment script executable:

```bash
chmod +x setup.sh
```

Run the deployment script:

```bash
./setup.sh
```

The full deployment commands and Docker configuration are available in `setup.sh`.

---

# Monitoring & Maintenance

Operational monitoring and maintenance tasks included:

* Monitoring container uptime and health
* Checking Docker container status using `docker ps`
* Monitoring system resources using `htop`
* Tracking container resource usage using `docker stats`
* Reviewing container logs for troubleshooting
* Performing periodic maintenance and updates
* Managing long-running VPS instances remotely over SSH

---

# Operational Highlights

* Containers configured with automatic restart policies
* Long-term stable Docker container operation
* Ubuntu VPS uptime exceeding 400+ days on some instances
* Resource monitoring performed using `htop` and `docker stats`
* Distributed deployment across multiple VPS providers

---

# Example Commands Used

Check running containers:

```bash
docker ps
```

Monitor resource usage:

```bash
docker stats
```

View logs:

```bash
docker logs presearch-node
```

System monitoring:

```bash
htop
```

---

# Screenshots

Screenshots of:

* Running Docker containers
* VPS terminal sessions
* Docker monitoring tools
* System uptime and resource monitoring

are available in the `screenshots/` folder.

---

# What I Learned

* Managing long-running Linux servers remotely over SSH
* Deploying and maintaining Dockerized services
* Monitoring system resources and container health
* Configuring persistent storage using Docker volumes
* Troubleshooting service reliability and uptime issues
* Understanding practical cloud infrastructure operations
* Working with real-world VPS environments

---

# Security Notice

Sensitive information such as:

* Registration codes
* Public IP addresses
* SSH key information
* Server identifiers

have been removed or redacted before publishing.

---

# Outcome

Successfully deployed and maintained multiple Dockerized services across different VPS providers, demonstrating practical skills in:

* Cloud infrastructure
* Linux server administration
* Docker containerization
* System monitoring
* Infrastructure reliability
* Remote server management
