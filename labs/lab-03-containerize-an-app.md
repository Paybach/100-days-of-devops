# Lab 03: Containerize an App

## Goal

Serve a tiny HTML page from a Docker container.

## Tasks

- [ ] Create a folder named `container-lab`.
- [ ] Add an `index.html` file with a heading and one sentence.
- [ ] Add a `Dockerfile` based on `nginx:alpine`.
- [ ] Copy `index.html` into `/usr/share/nginx/html/index.html`.
- [ ] Build the image with a memorable tag.
- [ ] Run the container and publish port `8080`.
- [ ] Visit `http://localhost:8080`.
- [ ] Stop and remove the container.

## Reflection

- What is the difference between an image and a container?
- Which line in your Dockerfile is likely to change most often?
