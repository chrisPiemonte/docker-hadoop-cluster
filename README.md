# Hadoop cluster on Docker containers

## Installation

### Linux:
1. Install [docker](https://docs.docker.com/), [docker-compose](https://docs.docker.com/compose/install/) and [git](https://git-scm.com/book/it/v1/Per-Iniziare-Installare-Git)

2. Clone this repo:<pre>git clone https://github.com/chrisPiemonte/docker-hadoop-cluster.git </pre> <pre>cd docker-hadoop-cluster/</pre>

3. Create the network :<pre>docker network create hadoop</pre>

4. Run:<pre>docker-compose -p hadoop up -d</pre>

5. Test it:<pre>docker exec -it hadoop-master ./run-wordcount.sh</pre>