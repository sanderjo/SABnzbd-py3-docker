# Docker image with SABnzbd running on python3
SABnzbd running on Python3, both client and server (Docker image)

## Build

Straight from github:
```
sudo docker build -t="sabnzbd-py3"  https://github.com/sanderjo/SABnzbd-py3-docker.git



```
Or, after a "git clone":
```
sudo docker build --no-cache -t="sabnzbd-py3" .
```

## Run
```
sudo docker run -p 8080:8080 --name sabnzbd-py3
```
## Access

via http:// < IP-address > :8080/

After enabling HTTPS in SABnzbd, access via https:// < IP-address > :8080/


