SET psql="C:\Program Files\PostgreSQL\11\bin\psql.exe"

rem %psql% -d movieland -U postgres -f %1

rem heroku pg:psql postgresql-opaque-68172 --app movieland-app-001
    %psql% -h ec2-54-246-85-234.eu-west-1.compute.amazonaws.com -p 5432 -d d46rq5gob3pso9 -U izvuawpjlpravi -f %1
rem -W 758ce78865b193a2af044f22826f731ae2b80dc2ad118d116f3c1325e3ad53bd -f %1
rem    %psql% postgres://izvuawpjlpravi:758ce78865b193a2af044f22826f731ae2b80dc2ad118d116f3c1325e3ad53bd@ec2-54-246-85-234.eu-west-1.compute.amazonaws.com:5432/d46rq5gob3pso9 -f %1

rem Host       ec2-54-246-85-234.eu-west-1.compute.amazonaws.com
rem Database   d46rq5gob3pso9
rem User       izvuawpjlpravi
rem Port       5432
rem Password   758ce78865b193a2af044f22826f731ae2b80dc2ad118d116f3c1325e3ad53bd
rem URI        postgres://izvuawpjlpravi:758ce78865b193a2af044f22826f731ae2b80dc2ad118d116f3c1325e3ad53bd@ec2-54-246-85-234.eu-west-1.compute.amazonaws.com:5432/d46rq5gob3pso9
rem Heroku CLI heroku pg:psql postgresql-opaque-68172 --app movieland-app-001
