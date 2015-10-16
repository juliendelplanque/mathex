*Mathex-Relations
>= anObject
	^ MGeq new
		leftParameter: self;
		rightParameter: anObject asMathex;
		yourself