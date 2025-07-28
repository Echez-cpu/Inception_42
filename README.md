# 🚀 Inception - 42 Project

> A Docker-based system administration and DevOps project from the 42 curriculum.

---

## 📦 What Are Containers?

Containers are an abstraction at the **application layer** that package code and all its dependencies together. They:

- Share the host OS kernel
- Are isolated from each other in **user space**
- Are **lightweight** (usually just MBs in size)
- **Start fast**, consume fewer resources
- Ideal for **microservices architecture**

> ✅ Example: `nginx`, `mariadb`, and `wordpress` can each run in separate containers, interacting through Docker networks.

---

## 🖥️ What Are Virtual Machines (VMs)?

Virtual Machines emulate **entire hardware stacks** and contain:

- A **full operating system**
- The application
- All required libraries & dependencies

They run on a **hypervisor**, and are:

- **Heavy** (GBs in size)
- **Slower** to boot (minutes)
- **Less efficient** in resource usage

> ✅ VMs are better suited when you need OS-level separation or to simulate different environments entirely.

---

## 🐳 Why Docker? What Problem Does It Solve?

Before Docker, most applications were deployed as **monoliths**:

### ⚠️ Problems in Monolithic Architecture:

1. All services (login, payments, DB, etc.) are tightly coupled.
2. A crash in one module (e.g., email) can **take down the entire app**.
3. Classic issue: **"It works on my machine!"**

---

### 💡 Docker to the Rescue

Docker packages applications with their dependencies, ensuring they **run the same everywhere**:

- On any OS
- On any machine
- In dev, test, or prod

> Think of Docker as a **portable, consistent runtime environment** for your applications.

---

## 🆚 Docker vs Virtual Machines

| Aspect        | Virtual Machines             | Docker Containers                |
|---------------|------------------------------|----------------------------------|
| **Size**      | GBs                          | MBs                              |
| **Boot Time** | Minutes                      | Seconds                          |
| **Performance** | Slower (runs full OS)      | Faster (uses host kernel)        |
| **Efficiency** | 1 OS per VM                 | Multiple containers share kernel |
| **Portability** | Limited                    | Highly portable                  |

---

## 📁 Project Overview

In the Inception project, you’ll containerize a multi-service architecture using Docker Compose.

### 🛠️ Services You’ll Set Up:

- `nginx` — HTTP reverse proxy
- `wordpress` — CMS
- `mariadb` — Database server
- `adminer` *(optional)* — DB UI
- `redis` *(bonus)* — Caching layer
- `static website` *(bonus)* — Hosted via NGINX
- Additional services like FTP, SSH *(bonus)*

---

### 📁 Project Structure

```
inception/
├── srcs/
│   ├── docker-compose.yml         # Defines the multi-container Docker setup
│   ├── .env                       # Environment variables (DB credentials, etc.)
│   └── requirements/
│       ├── nginx/
│       │   ├── Dockerfile         # NGINX Dockerfile
│       │   └── conf/              # NGINX configuration files
│       ├── wordpress/
│       │   ├── Dockerfile         # WordPress Dockerfile
│       │   └── tools/             # WordPress setup scripts/tools
│       └── mariadb/
│           ├── Dockerfile         # MariaDB Dockerfile
│           └── tools/             # MariaDB initialization scripts
└── secrets/
    ├── wp_db.sql                  # Preloaded WordPress DB schema
    ├── wp_admin_pass.txt          # WordPress admin password
    └── mariadb_root_pass.txt      # MariaDB root password
```
---

## 📌 Features

- ✅ Infrastructure-as-Code using Docker Compose
- ✅ Multi-container setup
- ✅ Custom Dockerfiles for each service
- ✅ Secured with SSL (bonus)
- ✅ Uses volumes for persistent data
- ✅ Uses environment variables for config

---

## 🛠️ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/Echez-cpu/inception_42.git
   cd inception_42

2. Run
   ```bash
   make

3. 🧠 What You'll Learn
Docker fundamentals: images, containers, volumes, networks

Service orchestration with Docker Compose

Multi-container networking

Basic web server and database administration

Secrets & environment variable management.

 NOTE
   ```bash
  To run the program your would need to add a .env file, and create your own ssl certificates
 ```

4. 📚 Resources
Docker Official Docs

Docker Compose Docs

WordPress + MariaDB + Nginx Stack

42 Network - Inception Subject PDF


5. 📄 License
This project is part of the 42 curriculum and is for educational purposes only.




