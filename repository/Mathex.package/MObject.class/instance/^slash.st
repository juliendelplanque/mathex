operators
/ anObject
	^MDivide new
		leftParameter: self;
		rightParameter: anObject asMathex;
		yourself