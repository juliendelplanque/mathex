visiting
visitMEnvironment: aMEnvironment
	aMEnvironment parameters do: [ :param | param asMathex acceptVisitor: self ].
	aMEnvironment inside acceptVisitor: self.
	dependencies addAll: aMEnvironment class requestedPackages