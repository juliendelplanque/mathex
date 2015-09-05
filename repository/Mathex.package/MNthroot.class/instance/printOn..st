printing
printOn: aStream 
	aStream
		<< $\;
		<< self commandName;
		<< $[.
	self parameters second printOn: aStream.
	aStream
		<< $];
		<< ${.
	self parameters first printOn: aStream.
	aStream	
		<< $}