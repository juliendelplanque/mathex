accessing
parameter: aParameter
	(self parameterCount > parameters size)
		ifFalse: [ NumberOfParametersExceeded signal ].
	parameters add: aParameter