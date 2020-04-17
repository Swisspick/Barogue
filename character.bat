SET current_player_damage=%player_damage%
SET current_player_health=%player_health%
SET current_player_dodge=%player_dodge%
SET equipment_points=10

IF %current_player_damage% LEQ 0 (
	SET current_player_damage=0
)

IF %current_player_health% LEQ 0 (
	SET current_player_health=0
)

IF %current_player_dodge% LEQ 0 (
	SET current_player_dodge=0
)

GOTO:EOF
