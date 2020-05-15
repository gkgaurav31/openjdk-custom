FROM openjdk:8u252-jdk

RUN apt update && apt install openssh-server -y

RUN echo "root:Docker!" | chpasswd 

COPY app.jar /home/site/wwwroot/

COPY init.sh /home/

COPY sshd_config /etc/ssh/

WORKDIR /home/site/wwwroot
EXPOSE 8080 2222
ENTRYPOINT /home/init.sh