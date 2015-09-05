stream out
on: aPRStream
	| canvas command |
	canvas := PRLaTeXCanvas on: aPRStream.
	command := canvas command name: self commandName.
	self parameters do: [ :param | command parameter: param asMathex asString ].
	canvas flush