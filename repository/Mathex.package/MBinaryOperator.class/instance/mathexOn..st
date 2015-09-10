stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self leftParameter ifNotNil: [ self leftParameter mathexOn: aPRStream ].
	canvas raw: self operator.
	self rightParameter ifNotNil: [ self rightParameter mathexOn: aPRStream ].
	canvas flush