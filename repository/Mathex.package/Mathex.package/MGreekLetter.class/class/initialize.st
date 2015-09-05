initialization
initialize
	super initialize.
	self list do: [ :greekLetter |
		Smalltalk at: greekLetter asCamelCase asSymbol put: (self letter: greekLetter) ]