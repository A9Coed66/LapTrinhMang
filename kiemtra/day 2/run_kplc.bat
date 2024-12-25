@echo off

REM Chạy các lệnh kplc.exe với các file example1.kpl đến example5.kpl
for %%i in (1 2 3 4 5 6 7 8 9) do (
    echo Running ./kplc.exe ../tests/example%%i.kpl
    .\kplc.exe ..\tests\example%%i.kpl > ..\tests\output%%i.txt
    if %errorlevel% equ 0 (
        echo example%%i.kpl ran successfully, output saved to output%%i.txt
    ) else (
        echo example%%i.kpl encountered an error
    )
)

REM So sánh các file output1.txt đến output5.txt với các file result1.txt đến result5.txt
for %%i in (1 2 3 4 5 6 7 8 9) do (
    fc ..\tests\output%%i.txt ..\tests\result%%i.txt > nul
    if %errorlevel% equ 0 (
        echo output%%i.txt and result%%i.txt giong nhau.
    ) else (
        echo output%%i.txt and result%%i.txt khac nhau.
    )
)

pause
