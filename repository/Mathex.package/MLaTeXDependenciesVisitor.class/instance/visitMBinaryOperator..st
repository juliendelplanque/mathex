visiting
visitMBinaryOperator: aMBinaryOperator
	aMBinaryOperator leftParameter
		ifNotNil: [ aMBinaryOperator leftParameter asMathex acceptVisitor: self ].
	aMBinaryOperator rightParameter
		ifNotNil: [ aMBinaryOperator rightParameter asMathex acceptVisitor: self ].
	dependencies addAll: aMBinaryOperator class requestedPackages