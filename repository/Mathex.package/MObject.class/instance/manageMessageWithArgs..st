unknown messages handling
manageMessageWithArgs: aMessage
	| subclasses classFound instance baseSelector i |
	i := aMessage selector size - 1. "index of ':'".
	baseSelector := (aMessage selector copyFrom: 1 to: i) asSymbol.
	subclasses := MObject allUsableSubclasses.
	classFound := [ (subclasses select: [ :class | class selector = aMessage selector ]) first ]
							on: SubscriptOutOfBounds
							do: [ ^ super doesNotUnderstand: aMessage ].
	instance := classFound new.
	(MEnvironment allSubclasses anySatisfy: [ :c | c = classFound ])
		ifTrue: [ instance inside: self ]
		ifFalse: [ instance parameter: self ].
	aMessage arguments do: [ :arg | instance parameter: arg ].
	^instance