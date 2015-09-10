tests
testContents
	self assert: ($X asMathex underset: $y) contents equals: '\underset{ X }{ y }'