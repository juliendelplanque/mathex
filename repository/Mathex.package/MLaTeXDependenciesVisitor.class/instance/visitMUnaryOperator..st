visiting
visitMUnaryOperator: aMUnaryOperator
	aMUnaryOperator parameter ifNotNil: [ aMUnaryOperator parameter acceptVisitor: self ].
	dependencies addAll: aMUnaryOperator class requestedPackages