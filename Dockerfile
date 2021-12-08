FROM mcr.microsoft.com/mssql/server:2019-CU14-ubuntu-16.04

USER root

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y software-properties-common curl \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2019.list)" \
    && apt-get update \
    && apt-get install -y \
        mssql-server-fts \
        mssql-server-is \
        # Integration Services is not working in Docker yet
        # https://github.com/Microsoft/mssql-docker/issues/213
    && echo "[TELEMETRY]\nenabled = F" > /var/opt/ssis/ssis.conf \
    && LC_ALL=en_US.UTF-8 ACCEPT_EULA=Y /opt/ssis/bin/ssis-conf -n setup \
    && echo 'export PATH="$PATH:/opt/ssis/bin"' >> ~/.bashrc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists

USER mssql
