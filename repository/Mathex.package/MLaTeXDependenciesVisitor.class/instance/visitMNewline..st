visiting
visitMNewline: aMNewline
	aMNewline parameter ifNotNil: [ aMNewline parameter asMathex acceptVisitor: self ].
	dependencies addAll: aMNewline class requestedPackages