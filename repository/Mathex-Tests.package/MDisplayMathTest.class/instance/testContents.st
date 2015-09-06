tests
testContents
	self assert: (1 asMathex displayMath contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]) equals: '\begin{displaymath} 1 \end{displaymath}'.