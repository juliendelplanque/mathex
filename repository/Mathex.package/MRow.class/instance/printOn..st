printing
printOn: aStream
	self collection doWithIndex: [ :e :i |
		e printOn: aStream.
		(i = self collection size)
			ifFalse: [
				aStream
					<< Character space;
					<< $&;
					<< Character space ]
			ifTrue: [ 
				aStream
					<< Character space ] ]