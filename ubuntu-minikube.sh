#STEP-1: Update the package list
sudo apt update -y
#STEP-2: Upgrade installed packages
sudo apt upgrade -y

#STEP-3: Install necessary dependencies
sudo apt install curl wget apt-transport-https -y
#STEP-4: Download Docker installation script
sudo curl -fsSL https://get.docker.com -o get-docker.sh
#STEP-5: Run the Docker installation script
sudo sh get-docker.sh

#install Minikube
#STEP-6: Download Minikube binary:
sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
#STEP-7: Move Minikube to a system-wide location
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
#STEP-8: Make Minikube executable:
sudo chmod +x /usr/local/bin/minikube
#STEP-9: Verify Minikube installation:
sudo minikube version

install kubectl
#STEP-10: Download kubectl binary:
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#STEP-11: Download kubectl checksum file
sudo curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
#STEP-12: Verify the integrity of the kubectl binary
sudo echo "$(cat kubectl.sha256) kubectl" | sha256sum --check
#STEP-13: Install kubectl:
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
#STEP-14: Start Minikube with Docker as the driver:
sudo minikube start --driver=docker --force

