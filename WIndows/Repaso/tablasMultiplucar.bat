@echo off
chcp 1252 1>null

cmd /V:on /C

for /L %%x in (0, 1, 10 ) do (
    
    set /A dato=%%x*5
    echo %%x * 5 = !dato!

)
