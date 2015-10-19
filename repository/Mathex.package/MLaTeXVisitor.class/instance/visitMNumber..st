visiting
visitMNumber: aMNumber
	| canvas |
	canvas := aMNumber canvas on: stream.
	canvas
		raw: ' ';
		raw: aMNumber number asString;
		raw: ' '.
	canvas flush