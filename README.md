# **🚀 DevOps Automation & Deployment Scripts**

This repository contains a collection of **shell scripts (********`.sh`********) and Ansible playbooks (********`.yml`********)** designed for **automating deployments, server configurations, cloud infrastructure setup, monitoring, and security**. It includes scripts for **Tomcat, Kubernetes, Docker, Terraform, Jenkins, ArgoCD, Prometheus, MySQL, and more.**

These scripts are useful for **system administrators, DevOps engineers, and developers** looking to automate repetitive tasks and deploy applications efficiently.

---

## **📂 Project Structure & Features**

### **1️⃣ Web Server & Application Deployment**

| **Script/File**              | **Purpose**                                                        |
| ---------------------------- | ------------------------------------------------------------------ |
| `tomcat.yml` / `tomcat.sh`   | Automates the deployment of Apache Tomcat using Ansible and Shell. |
| `tomcat-users.xml`           | Configures user roles for Tomcat Manager.                          |
| `netflix.sh` / `netflix.yml` | Deploys a Netflix-like application environment.                    |
| `swiggy.sh`                  | Sets up a Swiggy-like web application environment.                 |
| `whatsapp.sh`                | Automates the deployment of a WhatsApp-like messaging system.      |

---

### **2️⃣ Database Installation & Configuration**

| **Script/File**             | **Database** | **Purpose**                                     |
| --------------------------- | ------------ | ----------------------------------------------- |
| `mysql.sh` / `2023mysql.sh` | MySQL        | Installs and configures MySQL server.           |
| `arango.sh`                 | ArangoDB     | Deploys ArangoDB for NoSQL database management. |

---

### **3️⃣ CI/CD & DevOps Tools**

| **Script/File** | **Tool**          | **Purpose**                                         |
| --------------- | ----------------- | --------------------------------------------------- |
| `jenkins.sh`    | Jenkins           | Installs and configures Jenkins CI/CD.              |
| `argocd.sh`     | ArgoCD            | Deploys ArgoCD for GitOps.                          |
| `sonar.sh`      | SonarQube         | Installs SonarQube for code quality analysis.       |
| `jfrog.sh`      | JFrog Artifactory | Deploys JFrog for artifact management.              |
| `nexus.sh`      | Nexus Repository  | Sets up Nexus Repository for dependency management. |

---

### **4️⃣ Cloud Infrastructure & Kubernetes**

| **Script/File**                | **Tool**       | **Purpose**                                      |
| ------------------------------ | -------------- | ------------------------------------------------ |
| `terraform.sh` / `terraformer` | Terraform      | Automates cloud infrastructure provisioning.     |
| `kops.sh` / `ubuntu-kops.sh`   | KOPS           | Creates and manages Kubernetes clusters.         |
| `kubecolor`                    | Kubectl Colors | Enhances Kubernetes CLI with colors.             |
| `opentofu.sh`                  | OpenTofu       | Alternative Terraform automation.                |
| `helm.sh`                      | Helm           | Installs Helm for Kubernetes package management. |

---

### **5️⃣ Monitoring, Logging & Security**

| **Script/File**                     | **Tool**                 | **Purpose**                                          |
| ----------------------------------- | ------------------------ | ---------------------------------------------------- |
| `grafana.sh`                        | Grafana                  | Installs and configures Grafana dashboards.          |
| `prometheus.sh`                     | Prometheus               | Sets up Prometheus for metrics monitoring.           |
| `nodeexporter.sh`                   | Node Exporter            | Collects system-level metrics for Prometheus.        |
| `metric-server.sh`                  | Kubernetes Metric Server | Enables Kubernetes resource monitoring.              |
| `loki & promtail`                   | Loki & Promtail          | Configures log aggregation with Grafana Loki.        |
| `nagioscore.sh` / `nagiosplugin.sh` | Nagios                   | Installs Nagios for system monitoring.               |
| `trivy.sh`                          | Trivy                    | Scans container images for security vulnerabilities. |

---

### **6️⃣ Docker & Containerization**

| **Script/File**      | **Tool**       | **Purpose**                                             |
| -------------------- | -------------- | ------------------------------------------------------- |
| `docker-compose.sh`  | Docker Compose | Deploys multi-container applications.                   |
| `ubuntu-docker.sh`   | Docker         | Installs and configures Docker on Ubuntu.               |
| `ubuntu-minikube.sh` | Minikube       | Sets up Kubernetes with Minikube for local development. |

---

### **7️⃣ Miscellaneous Scripts**

| **Script/File**                  | **Purpose**                             |
| -------------------------------- | --------------------------------------- |
| `master and slave.sh`            | Configures a master-slave architecture. |
| `mini-al.sh`                     | Installs additional Linux utilities.    |
| `pegion-ubuntu.sh` / `pegion.sh` | Custom deployment tools.                |

---

## **🛠 Prerequisites**

Before using these scripts, make sure you have:\
👉 A **Linux-based** system (Ubuntu, CentOS, Debian)\
👉 **Ansible installed** (for `.yml` playbooks)\
👉 **Docker installed** (for container-based deployments)\
👉 **Kubernetes setup** (for K8s-related scripts)\
👉 **Terraform installed** (for cloud automation)

---

## **🚀 How to Use These Scripts**

### **🔹 Running Shell Scripts (********`.sh`********)**

1️⃣ **Give execution permissions**:

```bash
chmod +x script-name.sh
```

2️⃣ **Run the script**:

```bash
./script-name.sh
```

---

### **🔹 Running Ansible Playbooks (********`.yml`********)**

1️⃣ **Ensure Ansible is installed**:

```bash
ansible --version
```

2️⃣ **Run the playbook**:

```bash
ansible-playbook playbook.yml -i inventory
```

*(Replace ****`playbook.yml`**** with the actual file name.)*

---

## **💡 Best Practices**

🔄 Run scripts in a **test environment** before production deployment.\
🛠 Use **version control (Git)** to track changes.\
🔧 Keep **backups** of important configurations.\
🕵️ Always **review scripts** before execution to avoid unintended changes.

---

## **🐝 License**

This repository is licensed under the **MIT License**. Feel free to **use, modify, and distribute** these scripts.

---

## **📞 Support & Contact**

For any queries, feel free to **open an issue** in the repository. 🚀

---

### **🔗 Repository Link:** [GitHub Repo](https://github.com/yourusername/repository-name)

---


