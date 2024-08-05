**Project Description**

The project sets up a web application environment using Docker Compose with three distinct services:

1. **Nginx**: Serves as a web server and reverse proxy, handling HTTP requests and serving static content.
2. **MariaDB**: Provides the database service for data storage and management.
3. **WordPress**: A content management system (CMS) for managing and publishing web content.

Each service is containerized with Docker, and Docker Compose orchestrates and manages the multi-container setup. The project is built and managed using `make`, which automates the process of setting up the environment and ensures a streamlined deployment.
