visiting
visitMBinaryOperatorCommand: aMBinaryOperatorCommand
	| canvas |
	canvas := aMBinaryOperatorCommand canvas on: stream.
	aMBinaryOperatorCommand leftParameter
		ifNotNil: [ aMBinaryOperatorCommand leftParameter acceptVisitor: self ].
	canvas command name: aMBinaryOperatorCommand operator.
	aMBinaryOperatorCommand rightParameter
		ifNotNil: [ aMBinaryOperatorCommand rightParameter acceptVisitor: self ].
	canvas flush