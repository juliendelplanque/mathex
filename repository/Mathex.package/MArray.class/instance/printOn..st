printing
printOn: aStream
	aStream
		<< '\begin{';
		<< self environmentName;
		<< $};
		<< ${;
		<< self environmentParameters first asString;
		<< $}.
	self rows do: [:row |
		row printOn: aStream.
		(row class = MHLine)
			ifFalse: [ aStream << '\\ ' ]
			ifTrue: [ aStream << ' ' ] ].
	aStream
		<< '\end{';
		<< self environmentName;
		<< $}