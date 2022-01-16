SubProceso resultado <- selecionaOperacion(operacion,numero1,numero2)
	Definir resultado Como Real
	Segun operacion  Hacer
		'+':
			resultado <- numero1+numero2
		'-':
			resultado <- numero1-numero2
		'*':
			resultado <- numero1*numero2
		'/':
			resultado <- numero1/numero2
	FinSegun
FinSubProceso

SubProceso preguntando()
	Borrar Pantalla
	Escribir '              ,---.'
	Escribir '            ,..-.   \'
	Escribir '           ( ( ,-------.'
	Escribir '           `,X          `.'
	Escribir '           /` `           `._'
	Escribir '          (            ,   ,_\'
	Escribir '          |          ,---.,.o `.'
	Escribir '          |         / o   \     )'
	Escribir '           \ ,.    (      .____,'
	Escribir '            \| \    \____,.     \'
	Escribir '          .`.\  \        _,____,.'
	Escribir '          \  ,--      ,-.     \'
	Escribir '            ( C     ,.         \'
	Escribir '             `--.  ..           |'
	Escribir '               |   |         .O |'
	Escribir '             __|    \        ,-._'
	Escribir '            / `L     `._  _,.  . `.'
	Escribir '           /    `--.._  `.,.   _\  `'
	Escribir '           `-.       /\  | `. ( ,\  \'
	Escribir '          _/  `-._  /  \ |--.  (     \'
	Escribir '         .  `-.   `.    \/\`.   `.    )'
	Escribir '               \  -hrr-    \ `.  |    |'
FinSubProceso

SubProceso felicitaciones()
	Borrar Pantalla
	Escribir '                 _..-...'
	Escribir '              ,Y+  .:.:\_'
	Escribir '             | |./.     ``-\'
	Escribir '             |,.`           `.'
	Escribir '             |               `_'
	Escribir '             |     ,-..-. ,-...:'
	Escribir '             |    /      ..     :                                _  '
	Escribir '             | .\ |    o  |__o.,.                           _.-. .\  '
	Escribir '            .|\| \\      /    `)                        ,..,.     ,.    Excelente !!!!!!'
	Escribir '             |`|  . `..- .....<:                      ,.    `. ,-:'
	Escribir '             . ,-   _.-.        `.                 _,.       +.  |'
	Escribir '              |`|  ,.            ..              ,.       - _/_,.-\'
	Escribir '               `.Y|   _,,.. ____./.           ,-.         /.|`.  _|'
	Escribir '                 ||  | |  |  | |           _.-              `--+.'
	Escribir '                 |-.  -|:.|..|-.    _,.. ,/.               ,..Y.'
	Escribir '                 / `\.       ,-.  ,. /,,.               _,.'
	Escribir '                .:_    -----...|.:   |             _,Y..'
	Escribir '               /  .`..;..     /:  \  |        _,Y-.'
	Escribir '               |      |  . .  | `._| |     _,.'
	Escribir '           _/-..;.. _ |     ` |   \   `.Y.i.'
	Escribir '         ,.    ,.    .             |    i/.'
	Escribir '      ,..      /                   ..--.'
	Escribir '      |       |                     \'
	Escribir '      : .     /                      . .'
	Escribir '     /.  `._ ..                         `.'
	Escribir '     /     _..                            \'
	Escribir '    /     ./                               \'
	Escribir '   /      /                                 \'
	Escribir '  /      |                                   \'
	Escribir ' /     ,.|                                    |'
FinSubProceso

SubProceso fallido()
	Borrar Pantalla
	Escribir '                     _ ,___,-.-,-=-.'
	Escribir '          __,-- _ _,-._)_  (--`.-._\ `.'
	Escribir '       _,.  __ |,. ,-. __)  ,-     /. |'
	Escribir '     ,._,--.   |     -.  _)/         `\'
	Escribir '   ,.,.      ,.       ,-._,`           :'
	Escribir '   ,.     ,-.       ,(,-(              :'
	Escribir '        ,.       ,-. ,    _            ;'
	Escribir '       /        ,-._/`---.            /'
	Escribir '      /        (____)(----. )       ,.'
	Escribir '     /         (      `.__,     /\ /,'
	Escribir '    :           ;-.___         /__\/|'
	Escribir '    |         ,.      `--.      -,\ |'
	Escribir '    :        /            \    .__/'
	Escribir '     \      (__            \    |_'
	Escribir '      \       ,`-, *       /   _|,\'
	Escribir '       \    ,.   `-.     ,._,-.    \'
	Escribir '      (_\,-.    ,.\.)--,.-.       __\'
	Escribir '       \       /  // ,.|      ,--.  `-.'
	Escribir '        `-.    `-/ \.  |   _,.         `.'
	Escribir '           `-._ /      `--./             \'
	Escribir '   -  -      ,.           |              \'
	Escribir '             /             |               \'
	Escribir '          ,-.              |               /'
	Escribir '         /                 |             -.'
FinSubProceso


SubProceso pregunta()
	Dimension preguntas[5,2]
	Definir numero1 Como Real
	Definir numero2 Como Real
	Definir operador Como Caracter
	Dimension operadores[5]
	operadores[0] <- '+'
	operadores[1] <- '-'
	operadores[2] <- '*'
	operadores[3] <- '/'
	numero1 <- azar(100)
	numero2 <- azar(100)
	operador <- operadores[azar(4)]
	preguntando()
	Escribir '¿Cuanto es ',numero1,operador,numero2,'?'
	Leer respuesta // ENTRADA 1
	Borrar Pantalla
	Si selecionaOperacion(operador,numero1,numero2)=respuesta Entonces
		felicitaciones()
		Escribir '    Felicitaciones acertaste!',numero1,operador,numero2,' es ',selecionaOperacion(operador,numero1,numero2)
	SiNo
		fallido()
		Escribir '    Recuerda que ',numero1,operador,numero2,' es ',selecionaOperacion(operador,numero1,numero2)
	FinSi
	Esperar Tecla
	pregunta()
FinSubProceso

Proceso main
	pregunta()
FinProceso
