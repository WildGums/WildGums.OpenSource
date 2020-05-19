:: Copy theme from subrepository
xcopy "repositories\hugo-theme-docdock" "src\themes\docdock" /e /y /i
xcopy "src\themes\docdock.customize" "src\themes\docdock" /e /y /i

:buildSite
set siteName=%~1

echo Building site: %siteName%

:: Build site
cd .\src
hugo
pause