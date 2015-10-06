visiting
visitMUnaryOperator: aMUnaryOperator
	| canvas |
	canvas := aMUnaryOperator canvas on: stream.
	canvas
		command name: aMUnaryOperator commandName.
	aMUnaryOperator parameter ifNotNil: [ aMUnaryOperator parameter acceptVisitor: self ]