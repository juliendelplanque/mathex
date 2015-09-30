visiting
visitMArray: aMArray
	aMArray parameters do: [ :param | param asMathex acceptVisitor: self ].
	aMArray inside do: [ :row | row acceptVisitor: self ].
	dependencies addAll: aMArray class requestedPackages.