stream out
mathexOn: aPRStream
	| canvas  |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: self leftDelimiter;
		raw: self inside leftDelimiter.
	self inside inside mathexOn: aPRStream.
	canvas
		raw: self rightDelimiter;
		raw: self inside rightDelimiter.
	canvas flush