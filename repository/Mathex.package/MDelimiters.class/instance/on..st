stream out
on: aPRStream
	| canvas  |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: self leftDelimiter.
	self inside on: aPRStream.
	canvas
		raw: self rightDelimiter.
	canvas flush