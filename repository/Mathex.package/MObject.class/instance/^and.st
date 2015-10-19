operators
& anObject
	^ MRowand new
		leftParameter: self;
		rightParameter: anObject asMathex;
		yourself