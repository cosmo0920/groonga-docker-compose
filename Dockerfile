FROM groonga/groonga:latest

ADD ./groonga-launch-http.sh /usr/bin/groonga-launch-http.sh
EXPOSE 10041
ENTRYPOINT ["groonga-launch-http.sh"]
