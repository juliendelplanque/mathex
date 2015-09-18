unknown messages handling
manageMessageWithoutArgs: aMessage
	| subclasses classFound instance |
	subclasses := MObject allUsableSubclasses.
	classFound := [ (subclasses select: [ :class | class selector = aMessage selector ]) first ]
							on: SubscriptOutOfBounds
							do: [ ^ self manageRegisteredCommand: aMessage ].
	instance := classFound new.
	(MEnvironment allSubclasses anySatisfy: [ :c | c = classFound ])
		ifTrue: [ instance inside: self ]
		ifFalse: [ instance parameter: self ].
	^instance