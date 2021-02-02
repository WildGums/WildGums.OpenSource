:: Copy theme from subrepository
for %%i in (docdock,doks) do (call:copyTheme %%i)

:: Generate all sites
:: for %%i in (home,5.0,5.1,5.2,5.3,5.4,5.5,5.6,5.7,5.8,5.9,5.10,5.11,5.12,vnext) do (call:buildSite %%i)
call:buildSite main

goto:eof

:buildSite
set siteName=%~1

echo Building site: %siteName%

:: Build site
cd .\src
hugo
goto:eof

:copyTheme
set themeName=%~1

echo Copying theme: %themeName%

:: Copy shared stuff
xcopy "repositories\hugo-theme-%themeName%" "src\shared\themes\%themeName%" /e /y /i
xcopy "src\themes\%themeName%.customize" "src\shared\themes\%themeName%" /e /y /i

goto:eof