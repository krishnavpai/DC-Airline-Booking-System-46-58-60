:load
start cmd /k python database_server.py y

start cmd /k python FlightServer.py 8000


start cmd /k python FlightServer.py 9000


start cmd /k python FlightServer.py 10000



:while
set /p close_server=Close/Reload all servers [y/n/r]?:
IF %close_server%==y ( echo Closing all servers...) & ( TASKKILL /IM cmd.exe ) ELSE ( IF %close_server%==r ( TASKKILL /IM cmd.exe) & (goto :load ) ELSE ( echo Servers still running...) & goto :while )

