FROM ubuntu:16.04
USER root

# Install PostgreSQL
RUN apt-get -y update && apt-get -y install sudo
RUN apt-get install -y postgresql postgresql-contrib
RUN apt-get install -y libpq-dev

# Settings for bind access
RUN echo 'host all  all    0.0.0.0/0  md5' >> /etc/postgresql/9.5/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.5/main/postgresql.conf
RUN echo 'service postgresql restart' >> ~/.bashrc

# Settings for PSQL access
ADD postgres-pass.sh /postgres-pass.sh
ADD run_postgres.sh /run_postgres.sh
RUN chmod u=rwx /*.sh
RUN echo '/run_postgres.sh' >> /etc/bash.bashrc
RUN /bin/bash -c ./run_postgres.sh

# Application port
EXPOSE 5432