stream out
mathexOn: aPRStream
	| canvas |
	canvas := self canvas on: aPRStream.
	canvas
		raw: ' ';
		raw: character;
		raw: ' ';
		flush