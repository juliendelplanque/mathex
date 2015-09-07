stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: ' ';
		raw: character;
		raw: ' ';
		flush