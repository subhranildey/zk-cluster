#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

apt-add-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer

/home/ubuntu/zk-cluster/zk-1/bin/zkServer.sh start
/home/ubuntu/zk-cluster/zk-2/bin/zkServer.sh start
/home/ubuntu/zk-cluster/zk-3/bin/zkServer.sh start

/home/ubuntu/zk-cluster/zk-3/bin/zkCli.sh -server localhost:2181,localhost:2182,localhost:2183
