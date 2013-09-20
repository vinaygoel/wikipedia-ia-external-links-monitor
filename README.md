Vinay Goel
(vinay@archive.org)

This project contains scripts to extract links from live Wikipedia edits. It leverages the Wikipedia Live Monitor project (https://github.com/tomayac/wikipedia-irc)

The "monitor" application monitors article edits as they occur in realtime on all the different language Wikipedia versions. If the edit includes URL references, then these link are extracted. In the case of "new" articles, the Wikipedia API is used to extract all the external links on the article page. 

Includes code that pushes the data produced by the monitor into an Apache Kafka distributed queue.
