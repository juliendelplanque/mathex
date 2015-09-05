stream out
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas command
		name: self commandName;
		optParameter: self parameters second asString;
		parameter: self parameters first asString.
	canvas flush