SET psql="C:\Program Files\PostgreSQL\11\bin\psql.exe"

%psql% -d movieland -U postgres -f %1
