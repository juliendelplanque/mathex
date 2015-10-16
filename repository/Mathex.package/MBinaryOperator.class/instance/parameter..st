accessing
parameter: anObject
	self leftParameter isNil
		ifTrue: [ self leftParameter: anObject ]
		ifFalse: [ 
			self rightParameter isNil
				ifTrue: [ self rightParameter: anObject ]
				ifFalse: [ ^ NumberOfParametersExceeded signal ] ]