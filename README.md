

#### Download & Tar
```bash
wget https://dlcdn.apache.org/zookeeper/zookeeper-3.8.0/apache-zookeeper-3.8.0-bin.tar.gz
mkdir -p /home/s/apps/zookeeper
mv apache-zookeeper-3.8.0-bin.tar.gz /home/s/apps/zookeeper
```

#### 
1.配置zoo.cfg, 包括数据目录，快照目录，server地址
2.在数据目录下创建myid文件，内容为server id
