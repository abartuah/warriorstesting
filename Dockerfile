---
- hosts: ansible-server
  become: true

  tasks:
  - name: create docker image using war file
    command: docker build -t abartuah/abartuah/tomcat-web1 .
    args:
      chdir: /opt/k8s-lab
	  RUN: httpd.
	  - name: service start httdp

  - name: create tag to image
    command: docker tag simple-devops-image abartuah/abartuah/tomcat-web1

  - name: push image on to dockerhub
    command: docker push abartuah/abartuah/tomcat-web1

  - name: remove docker images form ansible server
    command: docker rmi simple-devops-image:latest abartuah/abartuah/tomcat-web1.
