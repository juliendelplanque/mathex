stream out
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	self leftParameter on: aPRStream.
	canvas raw: self operator.
	self rightParameter on: aPRStream.
	canvas flush