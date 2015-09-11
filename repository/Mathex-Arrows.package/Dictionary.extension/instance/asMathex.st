*Mathex-Arrows
asMathex
	| mArray |
	mArray := MArray new parameter: 'lcr'; yourself.
	self keysAndValuesDo: [ :key :value |
		mArray addRow: {key . MMapsto new . value} ].
	^mArray