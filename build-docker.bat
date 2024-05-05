@echo off
cd C:\Users\icaro\Documents\dev\apache-airflow

rem Executa o build da imagem Docker
docker build -t airflow-sqlserver -f Dockerfile . --no-cache

rem Inicia os containers definidos no arquivo docker-compose.yml
docker-compose up -d
