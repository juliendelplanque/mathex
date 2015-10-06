visiting
visitMBlockClosure: aMBlockClosure
	| canvas |
	canvas := aMBlockClosure canvas on: stream.
	aMBlockClosure blockClosure value acceptVisitor: self