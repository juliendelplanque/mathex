tests
testContents
	self assert: (1 asMathex equation contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]) equals: '\begin{equation} 1 \end{equation}'