𝘛𝘩𝘪𝘴 𝘱𝘳𝘰𝘫𝘦𝘤𝘵 𝘩𝘢𝘴 𝘣𝘦𝘦𝘯 𝘤𝘳𝘦𝘢𝘵𝘦𝘥 𝘢𝘴 𝘱𝘢𝘳𝘵 𝘰𝘧 𝘵𝘩𝘦 42 𝘤𝘶𝘳𝘳𝘪𝘤𝘶𝘭𝘶𝘮 𝘣𝘺 𝘮𝘰𝘩𝘦𝘭-𝘬𝘩.

Description

Inception is a system administration project focused on containerization using Docker and Docker Compose.  
The goal of this project is to set up a small infrastructure composed of multiple services running in isolated containers.

Instructions

Requirements
Linux environment (VM or local machine)
Docker and Docker Compose installed
Basic knowledge of terminal commands
Installation & Execution
Clone the repository:
git clone git@github.com:Mohamedamineelkhalloufi/Inception.git
cd Inception
Build and run the project using Makefile:
make
Access services:
Web server: https://mohel-kh.42.fr
Stop the project:
make stop

Project Description

This project uses Docker to replace traditional virtual machines for lightweight, fast, and flexible deployment. Services are isolated in containers with their own filesystem, network, and resources. Persistent storage is managed through Docker Volumes to ensure data is kept between container restarts.

Comparisons

Virtual Machines vs Docker	Docker is lightweight, faster to deploy, and uses fewer resources than VMs.
Secrets vs Environment Variables	Secrets are safer for sensitive data; environment variables are simpler for dev/test purposes.
Docker Network vs Host Network	Docker networks isolate services and provide custom routing; host network is faster but less secure.
Docker Volumes vs Bind Mounts	Volumes are managed by Docker and portable; bind mounts link host directories directly but depend on host paths.

Resources
Docker Documentation: https://medium.com/@imyzf/inception-3979046d90a0
Docker Compose Documentation: https://docs.docker.com/compose