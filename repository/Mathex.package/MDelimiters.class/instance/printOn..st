printing
printOn: aStream
	aStream
		<< self leftDelimiter.
	inside printOn: aStream.
	aStream
		<< self rightDelimiter.