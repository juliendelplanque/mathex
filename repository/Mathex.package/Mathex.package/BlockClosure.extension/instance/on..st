*Mathex
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas raw: self value