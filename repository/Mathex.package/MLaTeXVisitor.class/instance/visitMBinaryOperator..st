visiting
visitMBinaryOperator: aMBinaryOperator
	| canvas |
	canvas := aMBinaryOperator canvas on: stream.
	aMBinaryOperator leftParameter
		ifNotNil: [ aMBinaryOperator leftParameter asMathex acceptVisitor: self ].
	canvas raw: aMBinaryOperator operator.
	aMBinaryOperator rightParameter
		ifNotNil: [ aMBinaryOperator rightParameter asMathex acceptVisitor: self ].
	canvas flush