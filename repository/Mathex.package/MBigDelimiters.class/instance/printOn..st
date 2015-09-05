as yet unclassified
printOn: aStream
	aStream
		<< self leftDelimiter;
		<< self inside leftDelimiter.
	self inside inside printOn: aStream.
	aStream
		<< self rightDelimiter;
		<< self inside rightDelimiter