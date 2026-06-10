FROM ubuntu

RUN sudo apt-update && apt install jenkins

COPY src/ /usr/share/nginx/html/

EXPOSE 80
