:: Copy theme from subrepository
xcopy "repositories\hugo-theme-docdock" "src\shared\themes\docdock" /e /y /i
xcopy "src\themes\docdock.customize" "src\shared\themes\docdock" /e /y /i

:buildSite
set siteName=%~1

echo Building site: %siteName%

:: Copy shared stuff
xcopy "src\shared" "src" /e /y /i
:: Build site
cd .\src
hugo
pause