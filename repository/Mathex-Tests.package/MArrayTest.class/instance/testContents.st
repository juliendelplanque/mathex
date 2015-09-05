as yet unclassified
testContents
	| array |
	array := MArray new.
	array
		parameter: 'ccc';
		addRow: #(1 2 3);
		addRow: #(4 5 6);
		addRow: #(7 8 9).
	
	self assert: array contents equals: '
\begin{array}{ccc}
 1 & 2 & 3 \\  4 & 5 & 6 \\  7 & 8 & 9  \end{array}
'