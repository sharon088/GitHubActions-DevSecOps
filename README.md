# Simple Python App

A simple Python Flask application for demonstrating best practices in CI/CD, containerization, and static code analysis.

## Project Overview

This project showcases a Python Flask application that is containerized using Docker. The pipeline includes code quality checks, vulnerability scanning, and signing container images using GitHub Actions.

## Features

- Static code analysis using **flake8**
- Dependency vulnerability scanning using **Snyk**
- Static Application Security Testing (SAST) with **Bandit**
- Docker image linting using **Hadolint**
- Continuous deployment with **GitHub Actions**
- Image signing using **Cosign**

## Prerequisites

- Docker
- Python 3.10+
- GitHub Account
- Docker Hub Account
- Snyk Account
- Cosign Setup

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/simple-python-app.git
   cd simple-python-app

2. Build and run the Docker container:
   ```bash
   docker build -t simple-python-app .
   docker run -p 5000:5000 simple-python-app

3. To use GitHub Actions for CI/CD, make sure you have the following secrets set up in your GitHub repository:
   ```bash
   - SNYK_TOKEN
   - DOCKER_USERNAME
   - DOCKER_PASSWORD
   - COSIGN_KEY
   - COSIGN_PASSWORD
   - COSIGN_PUBLIC_KEY

4. to run tests locally:
   ```bash
   flake8 .
   bandit -r .

## CI/CD Pipline

This project utilizes GitHub Actions for continuous integration and deployment. The pipeline includes the following steps:

1. Checkout Code: Fetch the code from the repository.
2. Setup Python: Install Python dependencies.
3. Static Code Analysis: Runs flake8 for code quality and bandit for security analysis.
4. Vulnerability Scanning: Uses Snyk to identify any known vulnerabilities in dependencies.
5. Docker Linting: Verifies the Dockerfile with Hadolint.
6. Docker Image Build and Push: Builds and pushes the Docker image to Docker Hub.
7. Image Signing and Verification: Signs and verifies the Docker image with Cosign for enhanced security.


