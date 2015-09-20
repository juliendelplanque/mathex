initialization
initialize
	super initialize.
	RegisteredCommandsDict := Dictionary new.
	Smalltalk at: #Mathex put: self