stream out
mathexOn: aPRStream
	| canvas  |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: left;
		raw: self inside class leftDelimiter.
	self inside inside mathexOn: aPRStream.
	canvas
		raw: right;
		raw: self inside class rightDelimiter.
	canvas flush