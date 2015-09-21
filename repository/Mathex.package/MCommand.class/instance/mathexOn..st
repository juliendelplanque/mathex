stream out
mathexOn: aPRStream
	| canvas command |
	canvas := self canvas on: aPRStream.
	command := canvas command name: self commandName.
	self optParameters do: [ :optParam | command optParameter: optParam asMathex asString ].
	self parameters do: [ :param | command parameter: param asMathex asString ].
	canvas flush