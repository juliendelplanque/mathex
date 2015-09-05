printing
printOn: aStream
	leftParameter printOn: aStream.
	aStream
		<< Character space;
		<< $\;
		<< self operator;
		<< Character space.
	rightParameter printOn: aStream