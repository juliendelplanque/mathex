visiting
visitMMatrix: aMMatrix
	self visitMArray: aMMatrix.
	dependencies addAll: aMMatrix class requestedPackages