visiting
visitMCharacter: aMCharacter
	| canvas |
	canvas := aMCharacter canvas on: stream.
	canvas
		raw: ' ';
		raw: aMCharacter character;
		raw: ' ';
		flush