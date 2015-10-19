visiting
visitMBlockClosure: aMBlockClosure
	aMBlockClosure blockClosure value acceptVisitor: self.
	dependencies addAll: aMBlockClosure class requestedPackages