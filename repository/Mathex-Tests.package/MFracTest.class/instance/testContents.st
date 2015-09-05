tests
testContents
	self assert: (1 asMathex frac: 2 asMathex) contents equals: '\frac{ 1 }{ 2 }'