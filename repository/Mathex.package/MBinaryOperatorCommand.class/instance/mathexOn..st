stream out
mathexOn: aPRStream
	| canvas |
	canvas := self canvas on: aPRStream.
	self leftParameter ifNotNil: [ self leftParameter mathexOn: aPRStream ].
	canvas command name: self operator.
	self rightParameter ifNotNil: [ self rightParameter mathexOn: aPRStream ].
	canvas flush