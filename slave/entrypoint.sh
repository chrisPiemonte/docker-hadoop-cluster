#!/usr/bin/env sh

CMD=$1

case "$CMD" in  
  "master" )
    $HADOOP_PREFIX/bin/hdfs namenode -format
    $HADOOP_PREFIX/sbin/hadoop-daemon.sh start namenode
    $HADOOP_PREFIX/sbin/yarn-daemon.sh start resourcemanager
    $HADOOP_PREFIX/sbin/hadoop-daemon.sh start datanode
    $HADOOP_PREFIX/sbin/yarn-daemon.sh start nodemanager
    tail -f /dev/null
    ;;

  "slave" )
    $HADOOP_PREFIX/sbin/hadoop-daemon.sh start datanode
    $HADOOP_PREFIX/sbin/yarn-daemon.sh start nodemanager
    ;;

   * )
    echo "mom's spaghetti"
    ;;
esac  