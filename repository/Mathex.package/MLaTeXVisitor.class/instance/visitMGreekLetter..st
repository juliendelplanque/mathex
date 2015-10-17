visiting
visitMGreekLetter: aMGreekLetter
	| canvas |
	canvas := aMGreekLetter canvas on: stream.
	canvas command name: aMGreekLetter letter.
	canvas flush