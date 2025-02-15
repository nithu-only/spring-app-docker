# 🚀 Spring Boot Authentication Service with Docker, Nginx & MySQL

## 📌 Project Overview
This project is a **Spring Boot application** for user authentication (login and registration), containerized using **Docker** and deployed using **Docker Compose**. It includes **MySQL** as the database, **Nginx** as a reverse proxy, and uses **Docker networking** for inter-container communication. The database is persistently stored using **Docker Volumes**.

---

## 🏗 Tech Stack
- **Spring Boot** (Backend API)
- **MySQL** (Database)
- **Docker & Docker Compose** (Containerization & Deployment)
- **Nginx** (Reverse Proxy & Load Balancer)
- **Docker Hub** (For storing the built images)

---

## 📂 Project Structure
```
📦 spring-app-docker
 ┣ 📂 src
 ┃ ┗ 📂 main
 ┃ ┃ ┗ 📂 java/com/example/app
 ┃ ┃ ┃ ┣ 📜 Application.java
 ┃ ┃ ┃ ┣ 📜 controller/AuthController.java
 ┃ ┃ ┃ ┣ 📜 service/UserService.java
 ┃ ┃ ┃ ┣ 📜 repository/UserRepository.java
 ┣ 📜 Dockerfile
 ┣ 📜 docker-compose.yml
 ┣ 📜 nginx.conf
 ┣ 📜 README.md
```

---

## 🛠 Setup & Deployment

### 1️⃣ **Clone the Repository**
```sh
git clone https://github.com/nithu-only/spring-app-docker.git
cd spring-app-docker
```

### 2️⃣ **Build the Spring Boot Docker Image**
```sh
docker build -t your-dockerhub-username/spring-app .
```

### 3️⃣ **Push Image to Docker Hub**
```sh
docker login
docker push your-dockerhub-username/spring-app
```

### 4️⃣ **Run the Application with Docker Compose**
```sh
docker-compose up -d
```

### 5️⃣ **Check Running Containers**
```sh
docker ps
```

### 6️⃣ **Access the Application**
- **API Endpoints:** `http://localhost:8080`
- **Nginx Proxy:** `http://localhost`

---

## ⚙️ Configuration Details

### **Dockerfile (Multi-Stage Build)**
- **Reduces image size** by using a multi-stage build.
- **Optimized for production** by using a lightweight JDK.

### **Docker Compose Setup**
- **Manages multiple containers** (Spring Boot, MySQL, Nginx).
- **Defines persistent storage** using MySQL volumes.
- **Ensures networking** between containers.

### **Nginx Configuration**
- **Acts as a reverse proxy** to route requests to the backend.
- **Improves security** by handling client requests before reaching the application.

---

## 🎯 Future Enhancements
- Implement **Kubernetes** for advanced container orchestration.
- Set up **CI/CD pipeline** for automated deployment.
- Add **Redis caching** for improved performance.

---

## 📜 License
This project is licensed under the MIT License.

---

## 🤝 Contributing
Feel free to fork this repository and submit pull requests! 🚀
