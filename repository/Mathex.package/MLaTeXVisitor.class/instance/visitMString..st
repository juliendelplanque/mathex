visiting
visitMString: aMString
	| canvas |
	canvas := aMString canvas on: stream.
	canvas
		raw: aMString string;
		flush