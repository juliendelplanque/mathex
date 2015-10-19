visiting
visitMConcatenate: aMConcatenate
	aMConcatenate parameters doWithIndex: [ :param :i |
		param asMathex acceptVisitor: self ].
	dependencies addAll: aMConcatenate class requestedPackages