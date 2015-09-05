tests
testAllLetters
	MGreekLetter list do: [ :str |
		self assert: (MGreekLetter letter: str) asString equals: ('\',str) ]