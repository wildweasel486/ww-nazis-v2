@echo off
color F

SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)

ECHO %dtStamp%
set NAME=ww-nazis-dev-%dtStamp%
set /p TYPE="Would you like to build a pk3 or pk7? (default pk3): " % = %

cd pk3

if (%TYPE%) == (pk7) (goto PK7) else (goto PK3)

:PK7
echo Building PK7
..\tools\7za a -t7z ..\%NAME%.pk7 *.* *
goto Done

:PK3
echo Building PK3
..\tools\7za a -tzip ..\%NAME%.pk3 *.* *
goto Done

:Done
pause >nul
