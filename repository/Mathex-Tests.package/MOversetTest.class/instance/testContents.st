tests
testContents
	self assert: ($X asMathex overset: $y) contents equals: '\overset{ X }{ y }'