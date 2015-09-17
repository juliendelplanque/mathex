initialization
initialize
	super initialize.
	self list do: [ :greekLetter |
		| symbol |
		(greekLetter first isUppercase)
			ifTrue: [ symbol := ('Maj' , greekLetter) asSymbol ]
			ifFalse: [ symbol := greekLetter asCamelCase asSymbol ].
		Transcript show: symbol; cr.
		Smalltalk at: symbol put: (self letter: greekLetter) ]