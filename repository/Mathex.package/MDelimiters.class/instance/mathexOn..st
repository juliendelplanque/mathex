stream out
mathexOn: aPRStream
	| canvas  |
	canvas := self canvas on: aPRStream.
	canvas
		raw: self class leftDelimiter.
	self inside mathexOn: aPRStream.
	canvas
		raw: self class rightDelimiter.
	canvas flush