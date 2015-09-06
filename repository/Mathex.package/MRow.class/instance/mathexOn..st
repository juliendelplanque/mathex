stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self collection doWithIndex: [ :e :i |
		e asMathex mathexOn: aPRStream.
		(i = self collection size)
			ifFalse: [
				canvas raw: '&' ] ]