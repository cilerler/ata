# Microsoft SQL Server with Drivers, Command Line Tools, Full Text Search etc.

## How to use this image

```powershell
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=yourStrong(!)Password" -p 1433:1433 -d cilerler/mssql:latest
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