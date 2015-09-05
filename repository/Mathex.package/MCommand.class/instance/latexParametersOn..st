printing
latexParametersOn: aStream
	parameters do: [ :param |
		aStream << ${.
		param printOn: aStream.
		aStream << $} ]