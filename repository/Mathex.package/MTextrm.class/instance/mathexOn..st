stream out
mathexOn: aPRStream
	| canvas command |
	canvas := PRLaTeXCanvas on: aPRStream.
	command := canvas command name: self commandName.
	command parameter: self parameters first asString.
	canvas flush