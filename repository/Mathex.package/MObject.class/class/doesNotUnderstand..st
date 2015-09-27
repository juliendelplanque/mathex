reflective operations
doesNotUnderstand: aMessage
	self allUsableSubclasses
		detect: [ :class | class symbol = aMessage selector ]
		ifFound: [ :class | ^ class new ]
		ifNone: [ ^MGreekLetter doesNotUnderstand: aMessage ]