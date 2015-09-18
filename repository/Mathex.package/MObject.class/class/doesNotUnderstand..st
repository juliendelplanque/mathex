as yet unclassified
doesNotUnderstand: aMessage
	self allUsableSubclasses
		detect: [ :class | class symbol = aMessage selector ]
		ifFound: [ :class | ^ class new ]
		ifNone: [ ^ super doesNotUnderstand: aMessage ]