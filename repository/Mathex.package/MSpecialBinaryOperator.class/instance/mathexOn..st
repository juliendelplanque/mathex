stream out
mathexOn: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self leftParameter mathexOn: aPRStream.
	canvas
		raw: self operator;
		raw: '{'.
	self rightParameter mathexOn: aPRStream.
	canvas raw: '}'.
	canvas flush