stream out
mathexOn: aPRStream
	| canvas  |
	canvas := self canvas on: aPRStream.
	canvas
		raw: left;
		raw: self inside class leftDelimiter.
	self inside inside mathexOn: aPRStream.
	canvas
		raw: right;
		raw: self inside class rightDelimiter.
	canvas flush