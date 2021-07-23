FROM cockroachdb/cockroach:v21.1.6

ADD init_cluster.sh /cockroach/
ADD start_fly.sh /cockroach/

CMD [ "shell", "/cockroach/start_fly.sh" ]