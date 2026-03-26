## Docker Setup

### 1. Install Docker on Ubuntu VPS

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install docker.io
```

Add your user to the Docker group:

```bash
sudo usermod -aG docker $USER
```

> Note: Log out and log back in for group changes to take effect.

---

### 2. Clean Existing Containers (if any)

```bash
docker stop presearch-node || true
docker rm presearch-node || true

docker stop presearch-auto-updater || true
docker rm presearch-auto-updater || true
```

---

### 3. Run Auto-Updater Container

```bash
docker run -d \
  --name presearch-auto-updater \
  --restart=unless-stopped \
  -v /var/run/docker.sock:/var/run/docker.sock \
  presearch/auto-updater \
  --cleanup \
  --interval 900 \
  presearch-auto-updater presearch-node
```

---

### 4. Pull Latest Presearch Node Image

```bash
docker pull presearch/node
```

---

### 5. Run Presearch Node Container

```bash
docker run -dt \
  --name presearch-node \
  --restart=unless-stopped \
  -v presearch-node-storage:/app/node \
  -e REGISTRATION_CODE=YOUR_REGISTRATION_CODE \
  presearch/node
```

---

### 6. Monitor Logs

```bash
docker logs -f presearch-node
```
