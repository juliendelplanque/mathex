tests-operators
testNegated
	| test |
	test := 1 asMathex negated.
	self assert: test class equals: MMinus.
	self assert: test contents equals: '- 1 '