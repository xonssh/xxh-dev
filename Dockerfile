FROM ubuntu:18.04
RUN apt update && apt install -y openssh-client sshpass rsync wget curl git python3-pip vim mc
RUN python3 -m pip install --upgrade pip
RUN pip install xonsh==0.9.13 pexpect
RUN echo 'ssh -i keys/id_rsa root@ubuntu_k \n\
ssh -i keys/id_rsa root@ubuntu_kf \n\
sshpass -p docker ssh docker@arch_p \n\
xxh/xxh -i keys/id_rsa root@ubuntu_k \n\
xxh/xxh -i keys/id_rsa root@ubuntu_kf \n\
xxh/xxh docker@arch_p +P docker' > /root/.bash_history

ENTRYPOINT ["tail","-f", "/dev/null"]