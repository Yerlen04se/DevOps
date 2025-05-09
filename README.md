Final Project: Docker with Nginx and Multiple Containers
📌 Description

This project demonstrates the creation and setup of a web application using Docker, Nginx, and multiple containers. It also includes automatic build and deployment through CI/CD, as well as interaction between multiple containers with proper configuration of permissions and request proxying.

The project includes:

    Using multiple containers with docker-compose.

    Nginx proxy server for request routing.

    Docker for containerization and automated builds via CI/CD.

✅ Requirements Fulfillment

    Building the project in Docker:

        The nginx:alpine image is used for containerization.

        The web application and Nginx configuration are loaded into the container, and the site is available via port 8080.

        The project also includes a server handling requests through a second container using the hello image.

    Permissions:

        The Dockerfile is configured with chmod and chown commands to properly manage file permissions for the website.

    CI/CD:

        The project is set up with GitHub Actions for automated build and deployment.

        All changes in the main branch automatically go through the CI/CD pipeline.

    Multiple Containers with Interaction:

        The project uses docker-compose to run two containers:

            web — the main website running through Nginx.

            whoami — a service for testing requests and displaying information about the requests (IP, headers, etc.).

    Additional Topic:

        Trailing Slash in proxy_pass:

            In Nginx, when using a trailing slash in proxy_pass, the path /hello stays in the URL during proxying. For example, a request to localhost:8080/hello/test will be proxied as http://hello_service/test rather than http://hello_service/hello/test. This is important for correct request routing in your application.

        🚀 How to Run

    Clone the repository:

git clone https://github.com/Yerlen04se/DevOps.git
cd DevOps

    Start the containers using Docker Compose:

docker-compose up -d

    Access the following URLs:

        Main website: http://localhost:8080

        Hello container: http://localhost:8081

📁 Project Structure

DevOps/
├── Dockerfile
├── docker-compose.yml
├── website/
│   └── index.html
│   └── website-demo-image/
│   └── assets/
├── nginx/
│   └── default.conf
├── .github/
│   └── workflows/
│       └── ci.yml

📌 Important Notes:

    docker-compose.yml: Configuration for two containers — web (the main site) and whoami (for testing requests).

    nginx/default.conf: Nginx configuration that handles the trailing slash in proxy_pass for correct request routing.

    CI/CD: GitHub Actions is configured for automatic build and deployment when changes are made to the main branch.
