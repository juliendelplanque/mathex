printing
printOn: aStream
	aStream
		<< $\;
		<< self commandName.
	self latexParametersOn: aStream