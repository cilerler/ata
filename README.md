[![](http://dockeri.co/image/cilerler/mssql-server-linux)](https://hub.docker.com/r/cilerler/mssql-server-linux)

<!-- ![](https://img.shields.io/badge/docker-cilerler%2Fmssql--server--linux-blue.svg?logo=docker) -->
[![](https://images.microbadger.com/badges/version/cilerler/mssql-server-linux:2017-CU16.svg) ![](https://images.microbadger.com/badges/image/cilerler/mssql-server-linux.svg)](https://microbadger.com/images/cilerler/mssql-server-linux "inspect on microbadger.com")


# Microsoft SQL Server w/ Full-Text Search

## How to use this image

```powershell
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=yourStrong(!)Password" -e "MSSQL_AGENT_ENABLED=true" -p 1433:1433 -d cilerler/mssql-server-linux:latest
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
- **<valid product id>** : This will run the container with the edition that is associated with the PID

For a complete list of environment variables that can be used, refer to the documentation [here](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker).
