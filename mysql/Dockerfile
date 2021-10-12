FROM postgres

ENV MYSQL_DATABASE Application

COPY ./CreateTable.sql /docker-entrypoint-initdb.d/
