visiting
visitMBinaryOperator: aMBinaryOperator
	| canvas |
	canvas := aMBinaryOperator canvas on: stream.
	aMBinaryOperator leftParameter
		ifNotNil: [ aMBinaryOperator leftParameter acceptVisitor: self ].
	canvas raw: aMBinaryOperator operator.
	aMBinaryOperator rightParameter
		ifNotNil: [ aMBinaryOperator rightParameter acceptVisitor: self ].
	canvas flush