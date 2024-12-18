# Wait to be sure that SQL Server came up
sleep 90

# Run the setup script to create the DB and the schema in the DB
# Note: make sure that your password matches what is in the Dockerfile
/opt/mssql-tools/bin/sqlcmd -S 192.168.33.10 -U sa -P Root123! -d master -i db.sql