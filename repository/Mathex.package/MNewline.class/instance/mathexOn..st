stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self parameter mathexOn: aPRStream.
	canvas raw: '\\'