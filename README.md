🚀 Multi-Service DevOps Monitoring Stack
This project is a full-scale DevOps practice environment demonstrating a containerized microservices architecture with a professional Prometheus-Grafana monitoring and alerting stack.

🏗️ Architecture Overview
The system consists of five main components orchestrated via Docker Compose:

Web Layer: Nginx acting as a reverse proxy.

Application Layer: A Python-based API/Application.

Database Layer: PostgreSQL for persistent data storage.

Monitoring Layer: Prometheus for metrics collection & Alertmanager for notifications.

Visualization Layer: Grafana for real-time dashboards.

🛠️ Tech Stack
Containers: Docker & Docker Compose

OS: Ubuntu (WSL2)

Monitoring: Prometheus v2.x

Alerting: Alertmanager (SMTP/Email integration)

Dashboarding: Grafana

Reverse Proxy: Nginx

Database: PostgreSQL

📈 Monitoring Features
The stack is configured to monitor system health and application performance:

Alerting Rules:

HighErrorRate: Fires when the application error rate exceeds the defined threshold.

HighCpuUsage: Monitors container resource consumption.

InstanceDown: Alerts immediately if any service container stops.

Notification System: * Integrated with Gmail SMTP to send real-time alerts to the DevOps engineer.

Includes "Resolved" notifications when the system returns to a healthy state.

🚀 Getting Started
Prerequisites
Docker and Docker Compose installed.
Clone the repository:

Bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
Configure Alertmanager:
Edit alertmanager/alertmanager.yml and update the to and auth_password fields with your credentials.

Deploy the stack:

Bash
docker-compose up -d
Access the Dashboards:

Grafana: http://localhost:3000 (Default login: admin/admin)

Prometheus: http://localhost:9090

Alertmanager: http://localhost:9093

🛡️ Safety Features (Terminal)
This project includes a custom Production Safety Lock for the Linux environment to prevent accidental data loss in the mnt/d/DevOps/projects directory:

Safe rm Function: Intercepts rm -rf * commands and requires a manual "YES" confirmation.

Verbose Logging: All deletions are logged to the terminal to ensure tracking of environment changes.

📁 Project Structure
Plaintext
.
├── docker-compose.yml
├── prometheus/
│   ├── prometheus.yml
│   └── alert.rules.yml
├── alertmanager/
│   └── alertmanager.yml
├── nginx/
│   └── nginx.conf
└── app/
    └── [Python App Files]

