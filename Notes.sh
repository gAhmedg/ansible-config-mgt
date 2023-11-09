export PS1="\e[30;45m[jenkins&Ansible@ \W]# \e[m "
export PS1="\e[36;40m[NFS@ \W]# \e[m " 
export PS1="\e[32;40m[Nginx-LB@ \W]# \e[m "


alias c='clear'

sudo chmod a+rwx /home/ubuntu ## to can any user access files (specific jenkins)
sudo chmod a+rwx /home/ubuntu
sudo chown root:root /home
sudo chmod 755 /home
sudo chown ubuntu:ubuntu /home/ubuntu -R
sudo chmod 700 /home/ubuntu /home/ubuntu/.ssh
sudo chmod 600 /home/ubuntu/.ssh/authorized_keys

chmod  400 prometheus.pem

eval `ssh-agent -s`
ssh-add prometheus.pem


ssh -A ec2-user@54.91.47.28
sudo chmod a+rwx /home/ubuntu ## to can any user access files (specific jenkins)

ssh -A ec2-user@172.31.23.13
ssh -A ec2-user@172.31.19.155
ssh -A ec2-user@172.31.30.221
ssh -A ubuntu@172.31.23.169









#############################################

sudo apt update
sudo apt install nginx
sudo systemctl enable nginx && sudo systemctl start nginx




upstream web {
        server 107.20.129.177 weight=5;
    }
    
    server {
        location / {
            proxy_pass http://web;
        }
    }




 upstream myproject {
    server Web1 weight=5;
    server Web2 weight=5;
  }

server {
    listen 80;
    server_name www.domain.com;
    location / {
      proxy_pass http://myproject;
    }
  }


















#######################################
upstream myproject {
    server Web1 weight=5;
    server Web2 weight=5;
  }

server {
    listen 80;
    server_name www.domain.com;
    location / {
      proxy_pass http://myproject;
    }
  }

sudo mount -t nfs -o rw,nosuid 172.31.23.13:/mnt/apps /var/www
















#######################################
#######################################
#######################################
#######################################
################################
export PS1="\e[40;31m[Web-server-1@ \W]#\e[m "
export PS1="\e[40;31m[Web-server-2@ \W]#\e[m "
export PS1="\e[33;40m[DB-server@ \W]#\e[m "
export PS1="\e[36;40m[NFS@ \W]# \e[m "
export PS1="\e[32;40m[Apeach-LB@ \W]# \e[m "

