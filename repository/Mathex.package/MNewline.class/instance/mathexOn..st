stream out
mathexOn: aPRStream
	| canvas |
	canvas := self canvas on: aPRStream.
	self parameter ifNotNil: [ self parameter mathexOn: aPRStream ].
	canvas raw: '\\'