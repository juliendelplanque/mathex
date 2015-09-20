stream out
mathexOn: aPRStream
	| canvas  |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: self class leftDelimiter.
	self inside mathexOn: aPRStream.
	canvas
		raw: self class rightDelimiter.
	canvas flush