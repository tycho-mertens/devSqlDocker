# General TODOs: 
#			- Optimize 

FROM mcr.microsoft.com/mssql/server:2022-latest AS build

#Sql Server Env Variables
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=devPassword123@!

#Copy files
WORKDIR /tmp
COPY setup.sql .

#TODO change 'sleep 10' to a health check, this way it will start instantly when the server has spun up
#Run main command
RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 10 && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "$SA_PASSWORD" -i /tmp/setup.sql && pkill sqlservr
	
FROM mcr.microsoft.com/mssql/server:2022-latest AS release
ENV ACCEPT_EULA=Y

COPY --from=build /var/opt/mssql/data /var/opt/mssql/data