stream out
mathexOn: aPRStream
	| canvas  |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: self leftDelimiter.
	self inside mathexOn: aPRStream.
	canvas
		raw: self rightDelimiter.
	canvas flush