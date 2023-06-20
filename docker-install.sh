#docker-install.sh
https://gitee.com/komavideo/LearnDocker/tree/master/Lesson02

Ubuntu Server 18.04 LTS
# 系统更新
$ sudo apt update
$ sudo apt upgrade
$ sudo apt autoremove
# 安装系统依赖包
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# 加入Docker信息库密钥
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
# key确认
$ apt-key list
# 最后8位作为fingerprint参数
$ sudo apt-key fingerprint 0EBFCD88
# 将Docker信息库加入本地信息库当中
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
# 查看OS采用核心号
$ lsb_release -cs
# 查看信息库加入的位置和内容
$ cat /etc/apt/sources.list|grep docker

# 系统再更新
$ sudo apt update
$ sudo apt upgrade
# Docker安装
$ apt show docker-ce
$ sudo apt install docker-ce docker-ce-cli containerd.io
# 校验安装
$ docker help
$ docker version
$ sudo docker run hello-world
# cat /etc/docker/daemon.json 
#{
#"registry-mirrors":["https://tdimi5ql.mirror.aliyuncs.com"]
#}
