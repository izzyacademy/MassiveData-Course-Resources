FROM ubuntu:18.04

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update

RUN apt-get -y install aptitude redis-server mysql-client curl wget gnupg

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -

RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update

RUN apt-get -y install mongodb-clients mongodb-database-tools openjdk-11-jdk

RUN wget https://dist.neo4j.org/cypher-shell/cypher-shell_4.1.2_all.deb

RUN dpkg -i cypher-shell_4.1.2_all.deb

# Command to build and push the new Docker image to the remote repository
# docker build . -f Debugger-Dockerfile -t izzyacademy/ubuntu1804:3
# docker push izzyacademy/ubuntu1804:3
# docker run --name debugger -it izzyacademy/ubuntu1804:3