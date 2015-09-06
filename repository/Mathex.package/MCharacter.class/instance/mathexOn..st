as yet unclassified
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas
		raw: ' ';
		raw: character;
		raw: ' ';
		flush