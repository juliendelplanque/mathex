accessing
inside: anObject
	((MDelimiters subclasses select: [ :c | c ~= MBigDelimiters ]) anySatisfy: [ :c | c = anObject class ])
		ifTrue: [ super inside: anObject ]
		ifFalse: [ MustBeSubclassOfMDelimiters signal ]