# Presearch Node on Ubuntu VPS (Docker)

## Overview

This project documents my experience running and maintaining multiple Dockerized Presearch Nodes across different Ubuntu-based VPS providers over a long period.

The nodes run inside Docker containers using the official Presearch image, with persistent storage and automatic restart configurations to ensure high availability and reliability.

This setup demonstrates real-world experience in managing distributed services across multiple cloud environments.

---

## Skills Demonstrated

* Linux (Ubuntu) server administration
* Docker container deployment and lifecycle management
* Managing multiple VPS environments
* Persistent storage using Docker volumes
* Networking and port configuration
* Long-term uptime monitoring and troubleshooting
* Running and maintaining distributed, production-like services

---

## Architecture

### VPS Providers Used

* Oracle Corporation (Oracle Cloud Infrastructure)
* Racknerd VPS

### Environment Details

* OS: Ubuntu
* Container Runtime: Docker
* Service: Presearch Node (Docker container)

### Deployment Approach

* Multiple nodes deployed across different VPS providers
* Each node runs in an isolated Docker container
* Persistent storage configured using Docker volumes
* Automatic restart enabled for reliability (`--restart=unless-stopped`)

---

## Docker Setup

Commands used to setup and run a node:

```bash
sudo apt update ; sudo apt upgrade -y ; sudo apt install docker.io 

sudo usermod -aG docker $USER 

docker stop presearch-node ; docker rm presearch-node ; docker stop presearch-auto-updater ; docker rm presearch-auto-updater ; docker run -d --name presearch-auto-updater --restart=unless-stopped -v /var/run/docker.sock:/var/run/docker.sock presearch/auto-updater --cleanup --interval 900 presearch-auto-updater presearch-node ; docker pull presearch/node ; docker run -dt --name presearch-node --restart=unless-stopped -v presearch-node-storage:/app/node -e REGISTRATION_CODE=$YOUR_REGISTRATION_CODE_HERE presearch/node ; docker logs -f presearch-node
```

---

## Key Configurations

* `--restart=unless-stopped` ensures containers restart automatically after reboot or failure
* Docker volumes used for persistent node data
* Environment variables used for node registration
* Deployment across multiple VPS providers improves redundancy and reliability

---

## Monitoring & Maintenance

* Checked running containers:

  ```bash
  docker ps
  ```
* Viewed logs:

  ```bash
  docker logs presearch-node
  ```
* Monitored uptime and container health across multiple servers
* Performed periodic maintenance and troubleshooting when required

---

## Screenshots

Screenshots of running containers, logs, and VPS terminals are available in the `screenshots/` folder.

---

## Notes

* Sensitive information such as registration codes has been removed
* This repository focuses on infrastructure, deployment, and system management aspects

---

## Outcome

Successfully deployed and maintained multiple Dockerized services across different VPS providers, demonstrating practical skills in cloud infrastructure, containerization, and system reliability.
