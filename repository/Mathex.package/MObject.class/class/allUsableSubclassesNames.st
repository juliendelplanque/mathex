private
allUsableSubclassesNames
	"Answer subclasses names that may be used in #doesNotUnderstand: look up."
	
	^self allSubclasses
		select: [ :subC | subC isUsable ]
		thenCollect: [ :subC | subC name ].