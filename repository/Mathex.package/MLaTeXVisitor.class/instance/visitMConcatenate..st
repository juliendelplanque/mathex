visiting
visitMConcatenate: aMConcatenate
	| canvas |
	canvas := aMConcatenate canvas on: stream.
	aMConcatenate parameters doWithIndex: [ :param :i |
		param asMathex acceptVisitor: self.
		(i ~= aMConcatenate parameters size) ifTrue: [ canvas raw: ' '; flush ] ]