#!/bin/bash

<<cmt
we are running django based app using shell script 
following are complete script to run app 
app run on PORT NO 8000 
firstly you need to give permission port 8000 using instance security inbound rule
to run this file you need to give permission to this file : chmod 755 filename.sh
in the bottom of the script added are errors-fault-diagnostic script for this app
cmt

clone_code(){
	echo "cloning app from github"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirments(){
	echo "here installing dependencies for the app in the system"
	sudo apt-get install docker.io nginx -y
}

require_restart(){
	sudo chown $USER /var/run/docker.sock 
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "@@@@@@@@@@@@@@-Deployment on your screen started-@@@@@@@@@@@@@@"

<<cmt
=======following are errors-fault-diagnostic script for this app======= 
cmt

if ! code_clone; then
	echo"the code directory alredy exits"
	cd django-notes-app
fi

if ! install_requirments; then
	echo"installtion failed"
	exit 1
fi
if ! require_restart; then
	echo"system fault ok"
	exit 1
fi
if ! deploy; then
	echo"deployment are failed bro kindly see where the admin ok"
	#sendmail
	exit 1
fi
echo "@@@@@@@@@@@@@@-Deployment on your screen ended-@@@@@@@@@@@@@@"
