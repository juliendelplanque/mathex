accessing
parameter: anObject
	self leftParameter isNil
		ifTrue: [ leftParameter := anObject ]
		ifFalse: [ 
			self rightParameter isNil
				ifTrue: [ rightParameter := anObject ]
				ifFalse: [ ^ NumberOfParametersExceeded signal ] ]