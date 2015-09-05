stream out
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: delimiters leftDelimiter;
		raw: delimiters inside leftDelimiter.
	super on: aPRStream.
	canvas
		raw: delimiters rightDelimiter;
		raw: delimiters inside rightDelimiter.