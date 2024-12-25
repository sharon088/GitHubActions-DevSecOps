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
