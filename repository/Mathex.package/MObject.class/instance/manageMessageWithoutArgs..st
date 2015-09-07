unknown messages handling
manageMessageWithoutArgs: aMessage
	| classWanted subclassesNames class |
	classWanted := ('M' , aMessage selector asCamelCase) asSymbol.
	subclassesNames := MObject allUsableSubclassesNames.
	(subclassesNames anySatisfy: [ :className | className = classWanted  ])
		ifTrue: [
			| instance |
			class := Smalltalk at: classWanted.
			instance := class new.
			(MEnvironment allSubclasses anySatisfy: [ :c | c = class ])
				ifTrue: [ instance inside: self; yourself ]
				ifFalse: [ instance parameter: self; yourself ].
			^instance ].
	^ super doesNotUnderstand: aMessage