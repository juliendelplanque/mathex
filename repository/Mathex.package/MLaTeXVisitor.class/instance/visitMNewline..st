visiting
visitMNewline: aMNewline
	| canvas |
	canvas := aMNewline canvas on: stream.
	aMNewline parameter ifNotNil: [ aMNewline parameter asMathex acceptVisitor: self ].
	canvas raw: '\\'