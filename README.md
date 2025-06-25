# JSON Server Docker Project

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![JSON Server](https://img.shields.io/badge/JSON_Server-000000?style=for-the-badge&logo=json&logoColor=white)

A ready-to-use mock REST API server built with JSON Server and Docker, perfect for frontend development, testing, and prototyping.

## Features

- 🐳 **Docker containerized** for easy deployment
- 📁 **Sample database** with realistic data structures
- 🔄 **Auto-reload** when data changes
- 🔍 **Full CRUD operations** with filtering, sorting, pagination
- 🤝 **Relationship support** (_embed, _expand)
- 📚 **Postman collection** for easy testing

## Quick Start

### Prerequisites
- Docker installed ([Install Docker](https://docs.docker.com/get-docker/))

### Running the Server

```bash
# Clone the repository
git clone https://github.com/anandhuk/json-server-docker.git
cd json-server-docker

# Build and run the container
docker build -t json-server .
docker run -p 3000:3000 -v $(pwd)/db.json:/usr/src/app/db.json json-server
```

Your API will be available at ```http://localhost:3000```

# API Endpoints

## Basic CRUD Endpoints

## Advanced Features

### Filtering 

```http
GET /users?address.city=New York
GET /products?price_gte=50&price_lte=100
```

### Pagination

```http
GET /products?_page=1&_limit=2
GET /users?_start=1&_end=3

```

### Sorting

```http
GET /products?_sort=price&_order=desc
GET /users?_sort=name&_order=asc

```

### Full-text Search

```http
GET /posts?q=react
```

### Relationships

```http
GET /posts/1?_embed=comments
GET /orders/1?_expand=user
```

## Postman Collection
A complete Postman collection is included in the repository (Postman-collection.json).

### Features:

All CRUD operations for each resource

Example requests with sample payloads

Environment variables for easy configuration

Test scripts for basic validation

### To import:

Open Postman

Click "Import" > Select the collection file

Set the ```base_url``` variable to ```http://localhost:3000```

- TODO: Authentication endpoints will be added in future updates

# Deployment Options

1. Local Development
```bash
docker run -p 3000:3000 -v $(pwd)/db.json:/usr/src/app/db.json json-server
```

2. Production (with Docker Compose)

```bash
docker-compose up -d
```

3. Cloud Deployment

This container can be deployed to any cloud platform that supports Docker:

AWS ECS

Google Cloud Run

Azure Container Instances

Heroku with Docker support

# License

Distributed under the MIT License. See ```LICENSE``` for more information.