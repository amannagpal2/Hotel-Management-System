# Use the official PostgreSQL image as the base image
FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_DB hotel
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 12345

# Copy SQL script to initialize the databas
#COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL default port
EXPOSE 5432

RUN echo "GRANT ALL PRIVILEGES ON DATABASE hotel TO postgres;" > /docker-entrypoint-initdb.d/grant.sql
