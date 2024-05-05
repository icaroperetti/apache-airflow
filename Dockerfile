FROM apache/airflow:2.2.3 
USER root
RUN /usr/local/bin/python -m pip install --upgrade pip \
    && pip install markupsafe==2.0.1 \
    && pip install apache-airflow-providers-odbc \
    && pip install pyodbc \
    && pip install apache-airflow-providers-microsoft-mssql \
    && pip install apache-airflow-providers-microsoft-mssql[common.sql] \
    && pip install apache-airflow-providers-microsoft-mssql[odbc] \
    && pip install apache-airflow-providers-microsoft-azure \
    && pip install gitpython
USER airflow