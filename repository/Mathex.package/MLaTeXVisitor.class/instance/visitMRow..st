visiting
visitMRow: aMRow
	| canvas |
	canvas := aMRow canvas on: stream.
	aMRow collection doWithIndex: [ :e :i |
		e asMathex acceptVisitor: self.
		(i = aMRow collection size)
			ifFalse: [
				#rowand asMathex acceptVisitor: self ] ].
	canvas flush