FROM chrispiemo/hadoop-base

COPY hdfs-site.xml ${HADOOP_PREFIX}/etc/hadoop/
COPY core-site.xml ${HADOOP_PREFIX}/etc/hadoop/
COPY yarn-site.xml ${HADOOP_PREFIX}/etc/hadoop/
COPY entrypoint.sh /
RUN chmod 777 entrypoint.sh

ENV HADOOP_PROVA="${HADOOP_PREFIX}/prova"

ENTRYPOINT ["./entrypoint.sh"]
CMD ["master"]
    