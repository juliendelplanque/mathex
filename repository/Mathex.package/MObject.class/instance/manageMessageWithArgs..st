unknown messages handling
manageMessageWithArgs: aMessage
	| i classWanted subclassesNames class |
	i := aMessage selector size - 1. "index of ':'"
	classWanted := ('M' , (aMessage selector copyFrom: 1 to: i) asCamelCase) asSymbol.
	subclassesNames := MObject allNonAbstractSubclassesNames.
	(subclassesNames anySatisfy: [ :className | className = classWanted  ])
		ifTrue: [
			| instance |
			class := Smalltalk at: classWanted.
			instance := class new.
			(MEnvironment allSubclasses anySatisfy: [ :c | c = class ])
				ifTrue: [ instance inside: self; yourself ]
				ifFalse: [ instance parameter: self; yourself ].
			aMessage arguments do: [ :arg | instance parameter: arg ].
			^instance ].
	^ super doesNotUnderstand: aMessage