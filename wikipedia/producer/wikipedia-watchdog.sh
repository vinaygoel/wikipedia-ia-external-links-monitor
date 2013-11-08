#!/usr/bin/env sh

KAFKADIR=/1/crawling/kafka-0.8.0-beta1-src/

while [ 1 ]; do

#irc consumer
$KAFKADIR/bin/kafka-console-consumer.sh --zookeeper crawl-zk1.us.archive.org:2181 --topic wiki-irc --group wiki-irc-watchdog-consumer --consumer-timeout-ms 180000 > /dev/null

echo "No IRC message received for 3 minutes - restarting monitor"
pkill -f monitor &> /dev/null

sleep 10

/home/ia/bin/logger -f /1/crawling/wikipedia-ia-external-links-monitor/logs/retries.log -fe /1/crawling/wikipedia-ia-external-links-monitor/logs/retries.err /1/crawling/wikipedia-ia-external-links-monitor/run-monitor.sh /1/crawling/wikipedia-ia-external-links-monitor/

done
