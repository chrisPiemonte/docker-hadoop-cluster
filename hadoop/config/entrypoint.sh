#!/usr/bin/env sh

CMD=$1
PARAM=$2

case "$CMD" in  
  "master" )
    service ssh start
    ./start-hadoop.sh
    tail -f /dev/null
    ;;

  "slave" )
    service ssh start
    tail -f /dev/null
    ;;

  "wordcount" )
    ./runwordcount.sh
    tail -f /dev/null
    ;;

   * )
    echo "mom's spaghetti"
    ;;
esac  