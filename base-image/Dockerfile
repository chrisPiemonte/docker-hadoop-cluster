FROM openjdk

RUN mkdir -p /hadoop_home && \
    cd /hadoop_home && \
    wget http://mirror.nohup.it/apache/hadoop/common/hadoop-2.8.0/hadoop-2.8.0.tar.gz && \
    tar xvf hadoop-2.8.0.tar.gz --gzip && \
    rm hadoop-2.8.0.tar.gz

ENV HADOOP_PREFIX="/hadoop_home/hadoop-2.8.0" \
    HADOOP_HOME="${HADOOP_PREFIX}" \
    HADOOP_COMMON_HOME="${HADOOP_PREFIX}" \
    HADOOP_CONF_DIR="${HADOOP_PREFIX}/etc/hadoop" \
    HADOOP_HDFS_HOME="${HADOOP_PREFIX}" \
    HADOOP_MAPRED_HOME="${HADOOP_PREFIX}" \
    HADOOP_YARN_HOME="${HADOOP_PREFIX}" \
    PATH="${HADOOP_PREFIX}/bin:${PATH}" \
    PATH="${HADOOP_PREFIX}/sbin:${PATH}"
