# 👋 Hello World Streamlit App
 
A simple, containerized Hello World application built with Streamlit featuring interactive elements.
 
![Python](https://img.shields.io/badge/Python-3.11-blue? logo=python&logoColor=white)
![Streamlit](https://img.shields.io/badge/Streamlit-1.31.0-FF4B4B?logo=streamlit&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)
 
## 📋 Table of Contents
 
- [Features](#-features)
- [Demo](#-demo)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
  - [Local Setup](#local-setup)
  - [Docker Setup](#docker-setup)
- [Usage](#-usage)
- [Project Structure](#-project-structure)
- [Git Workflow](#-git-workflow)
- [Deployment](#-deployment)
- [Contributing](#-contributing)
- [License](#-license)
 
## ✨ Features
 
- 🎯 Simple and clean Hello World interface
- 📝 Interactive text input for personalized greetings
- 🎚️ Slider component for user interaction
- 🐳 Fully containerized with Docker
- 🚀 Ready for cloud deployment
 
## 🎬 Demo
 
Once running, the app provides:
- A personalized greeting based on your name input
- An excitement level slider with dynamic responses
- A clean, modern UI powered by Streamlit
 
## 📦 Prerequisites
 
### For Local Development
- Python 3.11 or higher
- pip (Python package manager)
 
### For Docker
- Docker Desktop ([Download here](https://www.docker.com/products/docker-desktop/))
 
## 🛠️ Installation
 
### Local Setup
 
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/hello-world-streamlit.git
   cd hello-world-streamlit
   ```
 
2. **Create a virtual environment (recommended)**
   ```bash
   python -m venv venv
   # On Windows
   venv\Scripts\activate
   # On macOS/Linux
   source venv/bin/activate
   ```
 
3. **Install dependencies**
   ```bash
   pip install -r requirements. txt
   ```
 
4. **Run the application**
   ```bash
   streamlit run hello_world_app. py
   ```
 
5. **Open your browser**
   ```
http://localhost:8501
   ```
 
### Docker Setup
 
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/hello-world-streamlit.git
   cd hello-world-streamlit
   ```
 
2. **Build the Docker image**
   ```bash
   docker build -t streamlit-hello-world .
   ```
 
3. **Run the container**
   ```bash
   docker run -d -p 8502:8501 --name streamlit-app streamlit-hello-world
   ```
 
4. **Open your browser**
   ```
http://localhost:8501
   ```
 
## 🚀 Usage
 
### Docker Commands
 
| Command | Description |
|---------|-------------|
| `docker ps` | List running containers |
| `docker logs streamlit-app` | View container logs |
| `docker stop streamlit-app` | Stop the container |
| `docker start streamlit-app` | Start a stopped container |
| `docker rm streamlit-app` | Remove the container |
| `docker rmi streamlit-hello-world` | Remove the image |
 
### Running on a Different Port
 
If port 8501 is already in use:
```bash
docker run -d -p 8502:8501 --name streamlit-app streamlit-hello-world:latest
```
Then access at `http://localhost:8502`
 
## 📁 Project Structure
 
```
hello-world-streamlit/
├── app.py    # Main Streamlit application
├── requirements.txt      # Python dependencies
├── Dockerfile            # Docker configuration
├── README.md             # Project documentation
```
 
## 🌿 Git Workflow
 
This project follows a branching strategy:
 
```
main
  │
  ├── development
  │     │
  │     └── feature/dockerization
  │
  └── v1.0.0 (tagged release)
```
 
### Branches
 
| Branch | Purpose |
|--------|---------|
| `main` | Production-ready code |
| `development` | Integration branch for features |
| `feature/dockerization` | Docker-related configurations |
 
### Creating a New Feature
 
```bash
# Create a new feature branch
git checkout -b feature/your-feature-name
 
# Make changes and commit
git add .
git commit -m "Add your feature"
 
# Push to remote
git push origin feature/your-feature-name
 
# Merge to development (after review)
git checkout development
git merge feature/your-feature-name
```
 
### Creating a Release
 
```bash
# Tag a new version
git tag -a v1.0.0 -m "Release v1.0.0: Initial release"
 
# Push tags to remote
git push origin --tags
```
 
## ☁️ Deployment
 
### Option 1: Streamlit Community Cloud (Free)
 
1. Push your code to GitHub
2. Visit [share.streamlit.io](https://share.streamlit.io)
3. Connect your repository
4. Deploy!
 
### Option 2: Docker Hub
 
```bash
# Login to Docker Hub
docker login
 
# Tag your image
docker tag streamlit-hello-world: latest yourusername/streamlit-hello-world:v1.0.0
 
# Push to Docker Hub
docker push yourusername/streamlit-hello-world:v1.0.0
```
 
### Option 3: Cloud Platforms
 
The Docker image can be deployed to:
- AWS ECS / EC2
- Google Cloud Run
- Azure Container Apps
- DigitalOcean App Platform
- Render.com
- Railway. app
 
## 🤝 Contributing
 
Contributions are welcome! Please follow these steps:
 
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
 
## 📄 License
 
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
 
## 👤 Author
 
**keshvi**
- GitHub: [@yourusername](https://github.com/yourusername)
 
---
 
<p align="center">
  Made with ❤️ using Streamlit and Docker
</p>
