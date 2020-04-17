:: Call static variables into bat
call character.bat
call equipment.bat

:: LOOP
:WHILE

::Call variables into bat
call player_stats.bat

ECHO *************************************
ECHO       CHOOSE YOUR EQUIPMENT
ECHO *************************************
ECHO.
ECHO            ** SWORDS **
ECHO.
ECHO.
ECHO *************************************
ECHO [1] SWORD          + 3 DMG - 0 DODGE
ECHO [2] 2H. SWORD      + 6 DMG - 3 DODGE
ECHO [3] BROAD SWORD    + 7 DMG - 5 DODGE
ECHO *************************************

SET /p sword_select="What SWORD Do You CHOOSE?"

::SWORD
if %sword_select% EQU 1 (
	ECHO SO you have chosen SWORD!
	ECHO Very well Adventurer
	SET /a player_damage=%current_player_damage%+%sword_damage%
	SET /a player_dodge=%current_player_dodge%-%sword_dodge%
	SET /p z=""
	CLS
	call character.bat
	GOTO ARMOR
) ELSE (
::TWO HANDED SWORD
	if %sword_select% EQU 2 (
		ECHO SO you have chosen 2H. SWORD!
		ECHO Very well Adventurer
		SET /a player_damage=%current_player_damage%+%twohsword_damage%
		SET /a player_dodge=%current_player_dodge%-%twohsword_dodge%
		SET /p z=""
		CLS
		call character.bat
		GOTO ARMOR
	) ELSE (
::BROADSWORD
		if %sword_select% EQU 3 (
			ECHO SO you have chosen BROADSWORD!
			ECHO Very well Adventurer
			SET /a player_damage=%current_player_damage%+%broadsword_damage%
			SET /a player_dodge=%current_player_dodge%-%broadsword_dodge%
			SET /p z=""
			CLS
			call character.bat
			GOTO ARMOR
		)
	)
)

:ARMOR

call player_stats.bat

ECHO *************************************
ECHO       CHOOSE YOUR EQUIPMENT
ECHO *************************************
ECHO.
ECHO            ** ARMOR **
ECHO.
ECHO.
ECHO *************************************
ECHO [1] LEATHER	+ 3 HP - 0 DODGE
ECHO [2] IRON	+ 6 HP - 3 DODGE
ECHO [3] PLATIN	+ 7 HP - 5 DODGE
ECHO *************************************

SET /p armor_select="What ARMOR Do You CHOOSE?"

::LEATHER
if %armor_select% EQU 1 (
	ECHO SO you have chosen LEATHER!
	ECHO Very well Adventurer
	SET /a player_health=%current_player_health%+%leather_armor_health%
	SET /a player_dodge=%current_player_dodge%-%leather_armor_dodge%
	SET /p z=""
	CLS
	call character.bat
	GOTO:EOF
) ELSE (
::IRON ARMOR
		if %sword_select% EQU 2 (
			ECHO SO you have chosen IRON!
			ECHO Very well Adventurer
			SET /a player_health=%current_player_health%+%iron_armor_health%
			SET /a player_dodge=%current_player_dodge%-%iron_armor_dodge%
			SET /p z=""
			CLS
			call character.bat
			GOTO:EOF
	) ELSE (
::PLATIN
		if %sword_select% EQU 3 (
			ECHO SO you have chosen PLATIN!
			ECHO Very well Adventurer
			SET /a player_health=%current_player_health%+%platin_armor_health%
			SET /a player_dodge=%current_player_dodge%-%platin_armor_dodge%
			SET /p z=""
			CLS
			call character.bat
			GOTO:EOF
		)
	)
)


