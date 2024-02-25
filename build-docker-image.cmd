@echo off
docker build -t dev-sql-docker .
echo.
echo [92mAll done, image name is 'dev-sql-docker'[96m (press any key to continue)[0m
pause > nul