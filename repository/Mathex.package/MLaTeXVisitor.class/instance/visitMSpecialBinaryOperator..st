visiting
visitMSpecialBinaryOperator: aMSpecialBinaryOperator
	| canvas |
	canvas := aMSpecialBinaryOperator canvas on: stream.
	aMSpecialBinaryOperator leftParameter asMathex acceptVisitor: self.
	canvas
		raw: aMSpecialBinaryOperator operator;
		raw: '{'.
	aMSpecialBinaryOperator rightParameter asMathex acceptVisitor: self.
	canvas raw: '}'.
	canvas flush