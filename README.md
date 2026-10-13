# CodeAlpha Project — Web Server with Docker

A lightweight web server built with **Nginx** and containerized using **Docker** and **Docker Compose**, developed as part of the CodeAlpha DevOps Internship.

## Project Overview

The objective of this project is to deploy a simple web application through a Docker container running Nginx. It demonstrates containerization, web server configuration, health monitoring, and container lifecycle management.

The application serves a custom HTML/CSS landing page and exposes a health-check endpoint to verify that the web server is running correctly.

## Objectives

- Containerize an Nginx web server using Docker.
- Serve a custom static website using HTML and CSS.
- Configure Nginx with a custom server configuration.
- Manage the service with Docker Compose.
- Expose the web server on a local host port.
- Implement a health check to monitor container health.
- Inspect container logs and resource usage.

## Architecture

```text
Browser
   |
   | http://localhost:8080
   v
Docker Host — Port 8080
   |
   v
Nginx Container — Port 80
   |
   +-- index.html
   +-- styles.css
   +-- Health endpoint: /health
```

## Technologies Used

- Docker
- Docker Compose
- Nginx
- HTML5 and CSS3
- PowerShell
- Git and GitHub

## Project Structure

```text
CodeAlpha_WebServer_Docker/
├── app/
│   ├── index.html
│   └── styles.css
├── nginx/
│   └── default.conf
├── screenshots/
├── Dockerfile
├── compose.yaml
├── .dockerignore
├── .gitignore
└── README.md
```

## Prerequisites

- Docker Desktop
- Docker Compose
- Git (for cloning the repository)

## Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/Meite76/CodeAlpha_WebServer_Docker.git
cd CodeAlpha_WebServer_Docker
```

### 2. Build the Docker image

```bash
docker compose build
```

### 3. Start the web server

```bash
docker compose up -d
```

### 4. Access the application

Open the following URL in your browser:

**http://localhost:8080**

### 5. Check the health endpoint

Open:

**http://localhost:8080/health**

Expected response:

```text
healthy
```

## Useful Docker Commands

Check the container status:

```bash
docker compose ps
```

Display recent logs:

```bash
docker compose logs --tail 20 web
```

Monitor container resource usage:

```bash
docker stats --no-stream codealpha-webserver
```

Stop the service:

```bash
docker compose down
```

Restart the service:

```bash
docker compose up -d
```

## Health Monitoring

The Docker Compose configuration includes a health check that requests the Nginx `/health` endpoint periodically. Docker reports the container as healthy when the configured check succeeds.

## Screenshots

The `screenshots/` directory contains visual evidence of the project:

- Website running in the browser
- Health-check response
- Container status and health
- Container resource usage
- Nginx logs

## What I Learned

Through this project, I practiced:

- Building Docker images from a Dockerfile
- Configuring and running containers
- Exposing container ports
- Managing services with Docker Compose
- Implementing health checks
- Inspecting logs and monitoring resource usage
- Using Git and GitHub for version control

## Internship Context

This project was developed as part of the **CodeAlpha DevOps Internship — Task 4: Web Server Docker**.

It is a learning project demonstrating practical DevOps fundamentals.

## Author

**MEITE YOUSSOUF**

GitHub: [@Meite76](https://github.com/Meite76)

Project repository: [CodeAlpha_WebServer_Docker](https://github.com/Meite76/CodeAlpha_WebServer_Docker)

---

*Built for learning, experimentation, and practical DevOps skill development.*