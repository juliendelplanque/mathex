visiting
visitMMatrix: aMMatrix
	| canvas |
	canvas := aMMatrix canvas on: stream.
	canvas
		raw: aMMatrix delimiters left;
		raw: aMMatrix delimiters inside class leftDelimiter.
	self visitMArray: aMMatrix.
	canvas
		raw: aMMatrix delimiters right;
		raw: aMMatrix delimiters inside class rightDelimiter.