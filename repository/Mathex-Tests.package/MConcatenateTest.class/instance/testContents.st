tests
testContents
	self assert: (((1 asMathex + 2) equal: 3) concatenate: ' This is the truth.' asMathex textrm) contents equals: ' 1 + 2 = 3  \textrm{ This is the truth.}'.
	self assert: (((1 asMathex + 2) equal: 3) , ' This is the truth.' asMathex textrm) contents equals: ' 1 + 2 = 3  \textrm{ This is the truth.}'.