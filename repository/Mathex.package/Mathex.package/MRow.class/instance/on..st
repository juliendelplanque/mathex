stream out
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self collection doWithIndex: [ :e :i |
		e asMathex on: aPRStream.
		(i = self collection size)
			ifFalse: [
				canvas raw: '&' ] ]