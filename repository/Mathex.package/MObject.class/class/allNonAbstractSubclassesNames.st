private
allNonAbstractSubclassesNames
	"Answer subclasses names that may be used in #doesNotUnderstand: look up."
	
	^self allSubclasses
		select: [ :subC | (self subclassesToIgnore anySatisfy: [ :toIgnore | toIgnore = subC ]) not ]
		thenCollect: [ :subC | subC name ].