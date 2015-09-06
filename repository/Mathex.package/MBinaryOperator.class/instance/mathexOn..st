stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self leftParameter mathexOn: aPRStream.
	canvas raw: self operator.
	self rightParameter mathexOn: aPRStream.
	canvas flush