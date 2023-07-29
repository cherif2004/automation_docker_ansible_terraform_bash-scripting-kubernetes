FROM marwaney/ssh-server:latest

ARG SSH_KEY_FILE='key.pub'

COPY ${SSH_KEY_FILE} /home/worketyamo/.ssh/authorized_keys

RUN apt update && apt install python3 -y 
