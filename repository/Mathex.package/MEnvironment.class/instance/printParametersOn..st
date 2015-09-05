printing
printParametersOn: aStream
	parameters doWithIndex: [ :param :i |
		aStream
			<< ${.
		param printOn: aStream.
		aStream
			<< $} ]