visiting
visitMBigDelimiters: aMBigDelimiters
	| canvas  |
	canvas := aMBigDelimiters canvas on: stream.
	canvas
		raw: aMBigDelimiters left;
		raw: aMBigDelimiters inside class leftDelimiter.
	aMBigDelimiters inside inside acceptVisitor: self.
	canvas
		raw: aMBigDelimiters right;
		raw: aMBigDelimiters inside class rightDelimiter.
	canvas flush