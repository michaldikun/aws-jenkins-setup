# Dockerized Jenkins and GitLab on EC2

This repository contains Docker Compose configurations and a Dockerfile for setting up Jenkins and GitLab services on an EC2 instance running Ubuntu. Both Jenkins and GitLab are configured through SSH, allowing seamless integration and automation in a containerized environment.

## Prerequisites

Ensure that you have the following prerequisites on your EC2 instance:

- Docker
- Docker Compose

## Docker Compose Configuration

The `docker-compose.yml` file defines services for Jenkins and GitLab:


The configuration includes volumes for persisting data, network setup, and dependencies between services. It also defines Docker Compose networks to isolate services.

## Jenkins Dockerfile

The Jenkins Dockerfile (`Dockerfile.jenkins`) extends the official Jenkins image and installs Docker dependencies:

This Dockerfile adds the Docker dependencies and ensures that the Jenkins user has the necessary permissions to interact with Docker.

## Getting Started

1. SSH into your EC2 instance.
2. Clone this repository.
3. Adjust the Docker Compose configuration and Jenkins Dockerfile as needed.
4. Run the following commands to start the services:

```bash
docker-compose build
docker-compose up -d
```

5. Access Jenkins at [http://<your-ec2-ip>:8080](http://<your-ec2-ip>:8080) and GitLab at [http://<your-ec2-ip>](http://<your-ec2-ip>).

