stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self parameter ifNotNil: [ self parameter mathexOn: aPRStream ].
	canvas raw: '\\'