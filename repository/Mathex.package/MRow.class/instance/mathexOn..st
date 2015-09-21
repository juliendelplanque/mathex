stream out
mathexOn: aPRStream
	| canvas |
	canvas := self canvas on: aPRStream.
	self collection doWithIndex: [ :e :i |
		e asMathex mathexOn: aPRStream.
		(i = self collection size)
			ifFalse: [
				canvas raw: '&' ] ]