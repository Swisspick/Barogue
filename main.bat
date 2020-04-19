@ECHO OFF
:: THIS IS THE MAIN SCRIPT, e.g. where the levels are
:: Start the Game
call controller.bat
call menu.bat

:: Choose Character
call character_design.bat

:: Choose Equipment
call character_equipment.bat

:: Start of Game
call dungeon.bat


:: TESTING AREA
call character.bat
call player_stats.bat

SET /p debugger=""
