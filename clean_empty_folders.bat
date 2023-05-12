for /f "delims=" %%d in ('dir /ad /b /s ^| sort /r') do rd "%%d" 2>nul && echo Deleted empty directory "%%d".
