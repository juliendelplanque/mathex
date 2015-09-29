visiting
visitMBinaryOperatorCommand: aMBinaryOperatorCommand
	| canvas |
	canvas := aMBinaryOperatorCommand canvas on: stream.
	aMBinaryOperatorCommand leftParameter
		ifNotNil: [ aMBinaryOperatorCommand leftParameter asMathex acceptVisitor: self ].
	canvas command name: aMBinaryOperatorCommand operator.
	aMBinaryOperatorCommand rightParameter
		ifNotNil: [ aMBinaryOperatorCommand rightParameter asMathex acceptVisitor: self ].
	canvas flush