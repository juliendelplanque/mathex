tests
testContents
	self assert: (1 asMathex math contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]) equals: '\begin{math} 1 \end{math}'