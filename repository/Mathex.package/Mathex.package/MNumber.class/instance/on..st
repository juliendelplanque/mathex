stream out
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: ' ';
		raw: number asString;
		raw: ' '.
	canvas flush