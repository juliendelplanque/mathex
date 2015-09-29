visiting
visitMGreekLetter: aMGreekLetter
	| canvas command |
	canvas := aMGreekLetter canvas on: stream.
	command := canvas command name: aMGreekLetter letter.
	canvas flush