REM for /d %%p in (".\src\*") do (
REM tools\docnet\docnet.exe "%%p"
REM )

tools\docnet\docnet.exe src
copy .\Home.htm .\index.htm
copy .\404.htm .\404.html

pause