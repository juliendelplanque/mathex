visiting
visitMBlockClosure: aMBlockClosure
	| canvas |
	canvas := aMBlockClosure canvas on: stream.
	canvas
		raw: aMBlockClosure value;
		flush