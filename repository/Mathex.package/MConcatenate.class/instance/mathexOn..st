stream out
mathexOn: aPRStream
	| canvas |
	canvas := self canvas on: aPRStream.
	self parameters doWithIndex: [ :param :i |
		param mathexOn: aPRStream.
		(i ~= self parameters size) ifTrue: [ canvas raw: ' '; flush ] ]