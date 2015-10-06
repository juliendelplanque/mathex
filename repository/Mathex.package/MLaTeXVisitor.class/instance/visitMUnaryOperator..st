visiting
visitMUnaryOperator: aMUnaryOperator
	| canvas |
	canvas := aMUnaryOperator canvas on: stream.
	canvas
		command name: aMUnaryOperator commandName.
	aMUnaryOperator parameter acceptVisitor: self