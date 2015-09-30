visiting
visitMBinaryOperatorCommand: aMBinaryOperatorCommand
	aMBinaryOperatorCommand leftParameter
		ifNotNil: [ aMBinaryOperatorCommand leftParameter asMathex acceptVisitor: self ].
	aMBinaryOperatorCommand rightParameter
		ifNotNil: [ aMBinaryOperatorCommand rightParameter asMathex acceptVisitor: self ].
	dependencies addAll: aMBinaryOperatorCommand class requestedPackages