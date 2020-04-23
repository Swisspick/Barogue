:WHILE

SET rooms=3

ECHO ************************
call player_stats.bat
ECHO ************************

ECHO You enter the DUNGEON


ECHO ---------------
ECHO -  []
ECHO -             -
ECHO    @
ECHO -             -
ECHO -  []
ECHO ---------------

ECHO Welcome into the Abyss
ECHO Good luck exploring this dungeon mortal
ECHO [ENTER TO CONTINUE]

SET /p filler=""

set /a random_room=%RANDOM% * 3 / 32768 + 1
ECHO %random_room%

SET temp_random_room=%random_room%
CLS
GOTO RANDOM_CHECK

:: MAKES IT IMPOSSIBLE TO HAVE THE SAME LEVEL TWICE
:RANDOM_CHECK
IF %temp_random_room% == %random_room% (
  set /a random_room=%RANDOM% * 3 / 32768 + 1
  GOTO RANDOM_CHECK
)
GOTO ROOM_SELECT

:: DEPENDING ON THE RANDOM NUMBER, CHOOSES DUNGEON LEVEL
:ROOM_SELECT
if %random_room% EQU 1 (
  GOTO DUNGEON_STANDARD
)

if %random_room% EQU 2 (
  GOTO DUNGEON_TREASURE
)

IF %random_room% EQU 3 (
  GOTO DUNGEON_EMPTY
)

:: LEVEL DESIGN OF DUNGEONS
:DUNGEON_STANDARD
call player_stats
ECHO ---------------
ECHO -             -
ECHO -             -
ECHO    @       K
ECHO -             -
ECHO -             -
ECHO ---------------
ECHO.
ECHO You encounter a Kobold
ECHO [1] Attack
ECHO [9] Access Inventory

SET /p choice=""
CLS
GOTO CHOICE

:DUNGEON_TREASURE
ECHO ---------------
ECHO -             -
ECHO -             -
ECHO    @       B
ECHO -             -
ECHO -             -
ECHO ---------------
ECHO.
ECHO You encounter a Chest
ECHO [1] Open Chest
ECHO [2] Ignore Chest
ECHO [9] Access Inventory

SET /p choice=""
CLS
GOTO CHOICE

:DUNGEON_EMPTY
ECHO ---------------
ECHO -             -
ECHO -             -
ECHO    @
ECHO -             -
ECHO -             -
ECHO ---------------
ECHO.
ECHO You encounter an empty room
ECHO [1] Continue
ECHO [9] Access Inventory

SET /p choice=""
CLS
GOTO CHOICE

:: OUTPUT DEPENDING ON INPUT GIVEN
:CHOICE
