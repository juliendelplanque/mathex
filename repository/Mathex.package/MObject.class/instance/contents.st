accessing
contents
	| visitor |
	visitor := MLaTeXVisitor new.
	self acceptVisitor: visitor.
	^visitor stream contents