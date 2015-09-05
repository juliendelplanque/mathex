tests
testContents
	self assert: 1 asMathex parenthesis bigDelimiters contents equals: '\left( 1 \right)'.
	self assert: 1 asMathex braces bigDelimiters contents equals: '\left\{ 1 \right\}'.
	self assert: 1 asMathex doublepipes bigDelimiters contents equals: '\left\| 1 \right\|'.
	self assert: 1 asMathex pipes bigDelimiters contents equals: '\left| 1 \right|'.
	self assert: 1 asMathex brackets bigDelimiters contents equals: '\left[ 1 \right]'