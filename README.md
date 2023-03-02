Zookeeper-setup
=

#### Download & Install
```bash
wget https://dlcdn.apache.org/zookeeper/zookeeper-3.8.0/apache-zookeeper-3.8.0-bin.tar.gz
mkdir -p /home/s/apps/zookeeper
mv apache-zookeeper-3.8.0-bin.tar.gz /home/s/apps/zookeeper
```

#### 依赖
- Java

#### 配置集群
1. 配置zoo.cfg, 包括数据目录，快照目录，server地址
2. 在数据目录下创建myid文件，内容为server id

#### zoo.cfg关键配置说明
- dataDir：数据目录
- dataLogDir：快照目录
- clientPort：client连接端口，the port at which the clients will connect
- server.1：集群配置，.1表示节点id，192.168.88.10:2888:3888，2888表示集群内通讯接口，3888集群内选举使用接口

#### systemd config
1. cp zookeeper.service /etc/systemd/system/
2. systemctl enable zookeeper.service 

#### 技巧
1. 指定客户端端口
`./zkCli.sh -server localhost:2181`
2. 登录zookeeper
`addauth digest $user:$pwd`

#### 踩坑
##### jute.maxbuffer
调大jute.maxbuffer参数，调整写入数据包大小
```bash
# 调大jute.maxbuffer参数，调整写入数据包大小，在zk的部署机器上，进入zk的conf目录下，新建一个java.env文件，然后写入如下内容，示例为调整到10M
export JVMFLAGS="-Xms512m -Xmx2048m -Djute.maxbuffer=10485760 " 
```
