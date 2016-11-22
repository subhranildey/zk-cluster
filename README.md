# zk-cluster
zookeeper cluster

zk-cluster/zk-1/bin/zkServer.sh start
zk-cluster/zk-1/bin/zkServer.sh status

zk-cluster/zk-2/bin/zkServer.sh start
zk-cluster/zk-2/bin/zkServer.sh status

zk-cluster/zk-3/bin/zkServer.sh start
zk-cluster/zk-3/bin/zkServer.sh status

zk-cluster/zk-1/bin/zkCli.sh –server 172.31.1.23:2181,172.31.1.23:2182,172.31.1.23:2183 
