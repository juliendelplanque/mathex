stream out
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self leftParameter on: aPRStream.
	canvas
		raw: self operator;
		raw: '{'.
	self rightParameter on: aPRStream.
	canvas raw: '}'.
	canvas flush