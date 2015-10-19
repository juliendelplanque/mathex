visiting
visitMDelimiters: aMDelimiters
	| canvas  |
	canvas := aMDelimiters canvas on: stream.
	canvas
		raw: aMDelimiters class leftDelimiter.
	aMDelimiters inside acceptVisitor: self.
	canvas
		raw: aMDelimiters class rightDelimiter.
	canvas flush