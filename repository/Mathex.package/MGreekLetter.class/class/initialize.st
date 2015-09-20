initialization
initialize
	super initialize.
	self list do: [ :greekLetter |
		| symbol |
		(greekLetter first isUppercase)
			ifTrue: [ symbol := ('Maj' , greekLetter) asSymbol ]
			ifFalse: [ symbol := greekLetter asCamelCase asSymbol ].
		Smalltalk at: symbol put: (self letter: greekLetter) ]