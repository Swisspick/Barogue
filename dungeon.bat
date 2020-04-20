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

SET /p filler=""

CLS
GOTO ROOM_SELECT


:ROOM_SELECT
if %random_room% EQU 1 (
  GOTO DUNGEON_STANDARD


SET /p filler=""

)

if %random_room% EQU 2 (
  GOTO DUNGEON_TREASURE
)

IF %random_room% EQU 3 (
  GOTO DUNGEON_EMPTY
)


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


:CHOICE

IF %random_room% == 1 (
  IF %choice% == 1 (
    ECHO YOURE ATTACKING THE Kobold
    SET /p filler=""
    CLS
    GOTO ROOM_SELECT
  ) ELSE (
    IF %choice% == 9 (
      ECHO YOUR OPENING YOUR Inventory
      SET /p filler=""
      CLS
      GOTO ROOM_SELECT
    )
  )
) ELSE (
  IF %random_room% == 2 (
    IF %choice% == 3 (
      ECHO YOUR OPENING THE CHEST
      SET /p filler=""
      CLS
      GOTO ROOM_SELECT
    )
    ECHO ROOM 2
    SET /p filler=""
    CLS
    GOTO ROOM_SELECT
  ) ELSE (
    IF %random_room% == 3 (
      ECHO ROOM 3
      SET /p filler=""
      CLS
      GOTO ROOM_SELECT
    )
  )
)
