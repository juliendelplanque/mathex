tests
testContents
	| row |
	row := MRow collection: #(1 2 3).
	self assert: row contents equals: ' 1 & 2 & 3 '