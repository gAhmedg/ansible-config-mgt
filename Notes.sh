export PS1="\e[30;45m[jenkins@ \W]# \e[m "
export PS1="\e[36;40m[NFS@ \W]# \e[m "

# so can jenkins add or edit in NFS server
sudo chown -R nobody:nobody /mnt
sudo chmod -R 777 /mnt


