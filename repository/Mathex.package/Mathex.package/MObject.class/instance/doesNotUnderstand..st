reflective operations
doesNotUnderstand: aMessage
	"Before saying I don't understand a message, I look at the selector and if it follow
	 the pattern 'mathex.*\:(with\:)*' or 'mathex.*', I do a lookup on subclasses of
	 MObject to see if I can instanciate one of them and return it."
	
	(aMessage selector matchesRegex: '.*\:(with\:)*')
		ifTrue: [ ^self manageMessageWithArgs: aMessage ].
	"(aMessage selector matchesRegex: 'mathex.*')
		ifTrue: [ "^self manageMessageWithoutArgs: aMessage "]."
	"^ super doesNotUnderstand: aMessage"