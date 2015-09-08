accessing
optParameter: anObject
	(self optParameterCount > optParameters size)
		ifFalse: [ NumberOfParametersExceeded signal ].
	optParameters add: anObject