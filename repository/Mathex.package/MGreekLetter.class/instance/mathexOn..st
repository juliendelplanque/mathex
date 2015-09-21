stream out
mathexOn: aPRStream
	| canvas command |
	canvas := self canvas on: aPRStream.
	command := canvas command name: self letter.
	canvas flush