stream out
mathexOn: aPRStream
	| canvas command |
	canvas := PRLaTeXCanvas on: aPRStream.
	command := canvas command name: self letter.
	canvas flush