as yet unclassified
printOn: aStream
	aStream
		<< $\;
		<< self commandName;
		<< $(.
	self latexParametersOn: aStream.
	aStream
		<< $)