stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: delimiters left;
		raw: delimiters inside class leftDelimiter.
	super mathexOn: aPRStream.
	canvas
		raw: delimiters right;
		raw: delimiters inside class rightDelimiter.