#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
#amazon-linux-extras install java-openjdk11 -y
sudo yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar


#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh start
#sh /opt/sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh status
#echo "user=admin & password=admin"
