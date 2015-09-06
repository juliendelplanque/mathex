tests
testContents
	self assert: ((Matrix diagonal: #(1 1 1)) asMathex contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]) equals: '\left(\begin{array}{ccc} 1 & 0 & 0 \\  0 & 1 & 0 \\  0 & 0 & 1  \end{array}\right)'