stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self parameters doWithIndex: [ :param :i |
		param mathexOn: aPRStream.
		(i ~= self parameters size) ifTrue: [ canvas raw: ' '; flush ] ]