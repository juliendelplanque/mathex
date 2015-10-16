operators
| anObject
	^MPipe new
		leftParameter: self;
		rightParameter: anObject asMathex;
		yourself