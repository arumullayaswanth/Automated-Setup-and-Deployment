#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
#yum install git java-1.8.0-openjdk maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
#sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
#sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
#amazon-linux-extras install java-openjdk11 -y
#sudo yum install java-17-amazon-corretto -y
#yum install jenkins -y
#update-alternatives --config java
# *+ 2           /usr/lib/jvm/java-17-amazon-corretto.x86_64/bin/java(select this)


#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
#systemctl start jenkins.service
#systemctl status jenkins.service


sudo -i
#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git java-1.8.0-openjdk maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
#amazon-linux-extras install java-openjdk11 -y
sudo dnf install java-21-amazon-corretto -y
sudo yum install java-21-amazon-corretto -y
sudo amazon-linux-extras enable corretto21

yum install jenkins -y


update-alternatives --config java
# *+ 2           /usr/lib/jvm/java-21-amazon-corretto.x86_64/bin/java(select this)


#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
sudo systemctl enable jenkins
systemctl status jenkins.servic
