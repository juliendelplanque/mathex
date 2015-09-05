stream out
on: aPRStream
	| canvas  |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: self leftDelimiter;
		raw: self inside leftDelimiter.
	self inside inside on: aPRStream.
	canvas
		raw: self rightDelimiter;
		raw: self inside rightDelimiter.
	canvas flush