unknown messages handling
manageMessageWithoutArgs: aMessage
	| classWanted subclassesNames class |
	classWanted := ('M' , aMessage selector asCamelCase) asSymbol.
	subclassesNames := MObject allNonAbstractSubclassesNames.
	(subclassesNames anySatisfy: [ :className | className = classWanted  ])
		ifTrue: [
			class := Smalltalk at: classWanted.
			^ class new parameter: self; yourself ].
	^ super doesNotUnderstand: aMessage