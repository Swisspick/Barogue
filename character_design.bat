
:WHILE

ECHO *********************
ECHO     CHOOSE A RACE
ECHO *********************
ECHO [1] Human
ECHO [2] Ape
ECHO [3] Pig
ECHO [4] Rat
ECHO [5] Pinguin
ECHO [6] Sylvia

SET /p race=
CLS

if %race% == 1 (
  ECHO ******************************
  ECHO             HUMAN
  ECHO ******************************
  ECHO                           .':::::'
  ECHO      ';;;;;;;;::;;:::;;;:;;,''''::.
  ECHO    .lc;;,;,,.             .,'.  :x.
  ECHO    ,x, '::.    .       .;.':;.  :x.
  ECHO    ;d'  ...   .o,     .dx. ,.   :x.
  ECHO   ,d,    :c   .x;     :k, .dc   :x.
  ECHO   ;x.    ,;   'x;     :x.  ;'   :x.
  ECHO   ;x.         'x;     :d.       :x.
  ECHO   ;x.       .cc;.     ,xl.      :x.
  ECHO   :x.       ;k,        :x'      :x.
  ECHO  .l:.       ;x,        :x'      :x.
  ECHO  cd.        .cc;::::::;cc.      :x.
  ECHO  :d.                            :x.
  ECHO  .:;'.        ...'':l::'       .co.
  ECHO    .;:;'.    .,::::c,..    .,:::,.
  ECHO       .,::'             .;:;'.
  ECHO          .,;;'      .;;;;'
  ECHO             .,;;,;:;;,.
  ECHO                ..
  ECHO ******************************
  ECHO DAMAGE 5
  ECHO HEALTH 5
  ECHO DODGE  5
) ELSE (
  if %race% == 2 (
    ECHO ******************************
    ECHO             APE
    ECHO ******************************
	ECHO           ..'''''''';;,.     .'.
	ECHO  ;c:c,.';,'....     ..,cl, .,:cc.
	ECHO ;o. 'ol:'               ':;;:. c:
	ECHO ;l.  ..       .  ..           ;o'
	ECHO .:l:'    .,. .c..cl' .,.  .';lc.
	ECHO   .';:.      ,c..ckc      ,o:.
	ECHO      :;    .',.  .,cl'    ,c.
	ECHO      ,:.  .l:'c::c;'cx'   :c
	ECHO      cc.  .;:cllc:;'.   .l,
	ECHO       'l.   ..,;;,,..    ;l.
	ECHO       .ll. .c;''''''c,  ,o,
	ECHO        .;:,..''''''''..co'
	ECHO          .,:;'''''''';:,.
	ECHO ******************************
    ECHO DAMAGE 7
    ECHO HEALTH 2
    ECHO DODGE  10
  ) ELSE (
    if %race% == 3 (
      ECHO ******************************
      ECHO             PIG
      ECHO ******************************
      ECHO ,:';.                    .,,.
      ECHO c; ,oc.               ..,o0o.
      ECHO c;   ;l,..',,,,,;.  .,::.:d'
      ECHO ll.   ,dc;:,''';c:;cl.  .o:
      ECHO ,x:                .    ;o.
      ECHO :l.     ;l.        .:;  :l.
      ECHO c;      ;x'        .:;  .l:
      ECHO cl.                      ,d'
      ECHO .l;        .'',,,,,,,::.  lc
      ECHO  .c:.     .dx:..'....'dk. :c
      ECHO    .;:'    ';,,,;,,,,,:, .o:
      ECHO      .,::,.  .,;;;;;;;'.,o:
      ECHO         .;:,,,,,,,,,,,,,'.
      ECHO              .........
      ECHO ******************************
      ECHO DAMAGE 7
      ECHO HEALTH 10
      ECHO DODGE  2
      ) ELSE (
        if %race% == 4 (
			ECHO ******************************
			ECHO               RAT
			ECHO ******************************
			ECHO    ..;c::c:.           .:c:c,
			ECHO  ;do:c;..,xd'.........:xo,.;dd'
			ECHO cx,       .c::::::::::c'    .;l.
			ECHO ox.                           ll
			ECHO .xx:.                ';.     ;x,
			ECHO  .lKl   .c:          'c.    .l,
			ECHO    ll    ..                  ll
			ECHO   .l;   .,;;...      .  .;;;.;x;
			ECHO   lc    .,,;.;o. .;..o;  .;,'.ll
			ECHO   :x'   .;::'.;:;oOd:;.  .:;;.ll
			ECHO    cx,        .';ldl,.      .'dl
			ECHO     lx,       .;c;.;c,....,:::c'
			ECHO      ,c::::::::::::col:::;'.
			ECHO        ..............
			ECHO ******************************
			ECHO DAMAGE 3
			ECHO HEALTH 3
			ECHO DODGE  15
          ) ELSE (
            if %race% == 5 (
              ECHO ******************************
              ECHO            PINGUIN
              ECHO ******************************
			  ECHO     .',:cccccclxOdcccxd'
			  ECHO    ,xOl.       ,c.   'dOd,
			  ECHO .;c;..                 'oOd'
			  ECHO ,kx'                      .kO.
			  ECHO ok.     ..             .'. ck'
			  ECHO ox.   .:kc            'dx. ck'
			  ECHO ox.    ..              ..  ck'
			  ECHO ox.                  ....  ck'
			  ECHO ox.               .coOXX0l.ck'
			  ECHO ox.           .okkXMMMMMXl.ck'
			  ECHO ox.          'xNMMWWWWOo:. cO'
			  ECHO ox.         'OWMMW0ool.    cO'
			  ECHO ox.          lNMMMWNNNk,   cO'
			  ECHO ox.          .:xOOOKWMM0:. cO'
			  ECHO ox.                .:cc,   ck'
			  ECHO ox.                        cO'
			  ECHO .ccccccccccccccccccccllllccl;.
			  ECHO   ..........................


              ECHO DAMAGE 2
              ECHO HEALTH 10
              ECHO DODGE  10
              ) ELSE (

                )
                )
              )
            )
          )
        )

ECHO ******************************
ECHO DO YOU WANT TO CONTINUE?
ECHO [1] Continue
ECHO [2] Choose A Different Race

set /p go_on=""

CLS

if %go_on% == 1 (
  if %race% == 1 (
    SET player_damage=5
    SET player_health=5
    SET player_dodge=5
    call character.bat

   GOTO:EOF
  ) ELSE (
      if %race% == 2 (
        SET player_damage=7
        SET player_health=2
        SET player_dodge=10
        call character.bat

       GOTO:EOF
      ) ELSE (
        if %race% == 3 (
          SET player_damage=7
          SET player_health=10
          SET player_dodge=2
          call character.bat

         GOTO:EOF
        ) ELSE (
          if %race% == 4 (
            SET player_damage=3
            SET player_health=3
            SET player_dodge=15
            call character.bat

           GOTO:EOF
          ) ELSE (
            if %race% == 5 (
              SET player_damage=2
              SET player_health=10
              SET player_dodge=10
              call character.bat

             GOTO:EOF
            ) ELSE (
              ECHO WRONG INPUT
              @timeout /t 3
              GOTO WHILE
            )
          )
        )
      )
    )
) ELSE (
  GOTO WHILE
  CLS
)

CLS
