:WHILE

ECHO **********************
ECHO *  DUNGEON  CRAWLER  *
ECHO **********************
ECHO [1] Start Adventure
ECHO [2] Close Game

set /p choice=""

if %choice% == 1 (
  echo GOOD LUCK ADVENTURER
  CLS
  goto:eof
)

if %choice%==2 (
  exit
) else (
ECHO WRONG INPUT FOOL
timeout /t 3
CLS
)

CLS
GOTO WHILE
