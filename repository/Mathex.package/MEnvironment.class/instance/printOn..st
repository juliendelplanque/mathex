printing
printOn: aStream
	aStream
		<< '\begin{';
		<< self environmentName;
		<< $}.
	self printParametersOn: aStream.
	self inside printOn: aStream.
	aStream
		<< '\end{';
		<< self environmentName;
		<< $}