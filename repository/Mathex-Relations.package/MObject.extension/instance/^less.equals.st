*Mathex-Relations
<= anObject
	^ MLeq new
		leftParameter: self;
		rightParameter: anObject asMathex;
		yourself