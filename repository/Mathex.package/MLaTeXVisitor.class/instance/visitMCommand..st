visiting
visitMCommand: aMCommand
	| canvas command |
	canvas := aMCommand canvas on: stream.
	command := canvas command name: aMCommand commandName.
	aMCommand optParameters
		do: [ :optParam | command optParameter: optParam asMathex asString ].
	aMCommand parameters
		do: [ :param | command parameter: param asMathex asString ].
	canvas flush