@echo off
title Power code
echo Welcome to Power code
echo.
pause>nul
goto st
:htu
cls
echo How to use program
echo ----------------------------
echo txt/* = Type in what you want to be said
echo -----------------------------------------
echo pse/* = Inserts a pause in the code
echo ------------------------------------------
echo pse/wait/* = waits how many seconds you want
echo ---------------------------------------------
echo pse/hid/* = inserts a hidden pause
echo ---------------------------------------------
echo r_d_s/* = exits the program
echo ---------------------------------------------
echo r_web_p/* = type in what webpage you want to bring up (e.g. google.com)
echo -------------------------------------------------------------------------
echo s_c_m_d/* = opens a cmd program
echo --------------------------------
echo clr/* = Lets you choose the color
echo ---------------------------------
echo vle/* = Lets you make a value
echo -----------------------------------
echo B_S_MI/* = sets program size to minimum size
echo -----------------------------------------------
echo B_S_N/* = sets program size to normal
echo ----------------------------------------
echo B_S_M/* = sets program size to max
echo -----------------------------------------
echo Scn_Wipe/* = clears the screen of your code
echo --------------------------------------------
echo 
pause
goto st
:st
echo Power code. Coding mode active
echo.
echo Type in help for commands
set /p "code=>>>"
if %code% == txt/* goto txt
if %code% == pse/* goto pse
if %code% == pse/wait/* goto psew
if %code% == pse/hid/* goto pseh
if %code% == r_d_s/* goto rds
if %code% == r_web_p/* goto rwp
if %code% == s_c_m_d/* goto cmd
if %code% == clr/* goto clr
if %code% == vle/* goto val
if %code% == B_S_MI/* goto min
if %code% == B_S_N/* goto norm
if %code% == B_S_M/* goto max
if %code% == Scn_Wipe goto wipe
if %code% == help goto htu
if %code% == 101101 goto ad
pause
:txt
echo.
echo txt/*
echo Type in what you want now
set /p typing=
cls
echo %typing%
pause>nul
goto st
:pse
cls
pause
goto st
:psew
set /p "time=How many seconds?>>>"
ping localhost -n %time% > nul
goto st
:pseh
pause>nul
goto st
:rds
exit
:rwp
echo What website do you want?
set /p web=
start www.%web%.com
goto st
:cmd
start
goto st
:clr
echo What color do you want?
echo     0 = Black       8 = Gray
echo     1 = Blue        9 = Light Blue
echo     2 = Green       A = Light Green
echo     3 = Aqua        B = Light Aqua
echo     4 = Red         C = Light Red
echo     5 = Purple      D = Light Purple
echo     6 = Yellow      E = Light Yellow
echo     7 = White       F = Bright White
set /p clr=
color %clr%
goto st
:val
echo What is your value?
set /p val=
cls
echo %val%
pause>nul
goto st
:min
mode 500
goto st
:norm
mode 750
goto st
:max
mode 1000
goto st
:wipe
cls
goto st
:ad
