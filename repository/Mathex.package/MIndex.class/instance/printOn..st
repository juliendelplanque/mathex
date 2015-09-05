printing
printOn: aStream
	leftParameter printOn: aStream.
	aStream
		<< self operator;
		<< ${.
	rightParameter printOn: aStream.
	aStream
		<< $}