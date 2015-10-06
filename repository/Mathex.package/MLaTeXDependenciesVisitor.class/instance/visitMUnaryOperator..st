visiting
visitMUnaryOperator: aMUnaryOperator
	aMUnaryOperator parameter acceptVisitor: self.
	dependencies addAll: aMUnaryOperator class requestedPackages