:: Copy theme from subrepository
xcopy "repositories\hugo-theme-docdock" "src\themes\docdock" /e /y /i

:: Build site
cd .\src
hugo
