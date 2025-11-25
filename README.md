# Docker Multi-stage Example (Debian)

![CI](https://github.com/gaetanovespero81/docker-multistage-example/actions/workflows/docker-ci.yml/badge.svg)
![Version](https://img.shields.io/github/v/tag/gaetanovespero81/docker-multistage-example?label=version)

This repository demonstrates an optimized **multi-stage Docker build**
based on a generic Linux distribution (`debian:bookworm-slim`).

The project compiles a small C program in a dedicated builder stage,
and runs the final binary in a lightweight runtime stage as a non-root user.

---

## 📦 Features

- Multi-stage Docker build
- Static C binary compilation
- Non-root runtime user
- Clean Debian base image
- GitHub Actions CI with:
  - Docker build
  - Container run test
  - Output validation

---

## 🛠 Build the image


`docker build -t docker-multistage-example .`

---

## ▶ Run the container

`docker run --rm docker-multistage-example`

Expected output:

`Hello from multi-stage Docker build on Debian!`

---

## 🔁 CI Pipeline (GitHub Actions)
The workflow automatically triggers on:
- any push
- any pull request

It performs:
1. Docker build
2. Program execution inside container
3. Output verification
4. Pass/fail result

You can inspect it under:

`.github/workflows/docker-ci.yml`

---

## 📂 Repository Structure
docker-multistage-example/
│

├── Dockerfile

├── src/

│   └── hello.c

├── .github/

│   └── workflows/

│   |   └── docker-ci.yml

└── README.md

---

## 🧩 Why this repo is valuable

- Demonstrates advanced Docker multi-stage techniques
- Shows build optimization and image size reduction
- Highlights secure container practices (non-root user)
- Includes automated CI pipeline
- Great for DevOps / Cloud / Platform Engineering portfolios

---

## 👤 Author

*Gaetano Vespero*

*DevOps & Automation Engineer* | *Specialist in CI/CD + AI Workflow Integration*
