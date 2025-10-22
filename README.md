# Microsoft SQL Server w/ Full-Text Search

## How to use this image

```pwsh
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=yourStrong(!)Password" -e "MSSQL_AGENT_ENABLED=true" -e "MSSQL_ENABLE_HADR=0" -p 1433:1433 -d cilerler/mssql-server-linux:latest
```

## Environment Variables

**ACCEPT_EULA** confirms your acceptance of the End-User Licensing Agreement.

**SA_PASSWORD** is the database system administrator (userid = 'sa') password used to connect to SQL Server once the container is running. **Important note:** This password needs to include at least 8 characters of at least three of these four categories: uppercase letters, lowercase letters, numbers and non-alphanumeric symbols.

**MSSQL_PID** is the Product ID (PID) or Edition that the container will run with. Acceptable values:

- **Developer** : This will run the container using the Developer Edition (this is the default if no MSSQL_PID environment variable is supplied)
- **Express** : This will run the container using the Express Edition
- **Standard** : This will run the container using the Standard Edition
- **Enterprise** : This will run the container using the Enterprise Edition
- **EnterpriseCore** : This will run the container using the Enterprise Edition Core
- **{valid product id}** : This will run the container with the edition that is associated with the PID

For a complete list of environment variables that can be used, refer to the documentation [here](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker).

## Adding SQL Server Integration Services (SSIS)

> [!WARNING] 
> Integration Services is not working in Docker yet.
> https://github.com/Microsoft/mssql-docker/issues/213

**SSIS_PID** is the Product ID (PID) or Edition that SSIS will run with.
For more details https://hub.docker.com/_/microsoft-mssql-server

```pwsh
&& apt-get install -y \
	mssql-server-is \
&& echo "[TELEMETRY]\nenabled = F" > /var/opt/ssis/ssis.conf \
&& LC_ALL=en_US.UTF-8 ACCEPT_EULA=Y /opt/ssis/bin/ssis-conf -n setup \
&& echo 'export PATH="$PATH:/opt/ssis/bin"' >> ~/.bashrc \
```
