visiting
visitMRow: aMRow
	aMRow collection do: [ :e |
		e asMathex acceptVisitor: self ].
	dependencies addAll: aMRow class requestedPackages