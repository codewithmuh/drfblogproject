# installing jenkins on Ubuntu 22.04 LTS (Droplet Digital Ocean) 

# 1. Update the package index on your server:
sudo apt-get update

# 2. Install the default-jdk package, which provides the Java Development Kit:
sudo apt-get install default-jdk


# 3. Verify that Java is installed correctly by checking its version:
java -version

# This should output the version of Java that you just installed.

#4. Add the Jenkins repository key to your system:
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# 5. Add the Jenkins repository to your system:
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#6. Update the package index on your server again:
sudo apt-get update

#7. Install Jenkins:
sudo apt-get install jenkins

#8. Start the Jenkins service:
sudo systemctl start jenkins


#9. Enable the Jenkins service to start automatically at boot:
sudo systemctl enable jenkins

#10. Verify that Jenkins is running by checking its status:
sudo systemctl status jenkins

# This should show that Jenkins is active and running.

#You should now be able to access the Jenkins web interface by going to 
http://your_server_ip:8080 in your web browser.

#To get your administrator password, run this command to get it.
 sudo cat /var/lib/jenkins/secrets/initialAdminPassword


 # Install Python
sudo apt install -y python3 python3-pip

# Install Virtualenv
sudo pip3 install virtualenv