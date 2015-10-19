visiting
visitMEnvironment: aMEnvironment
	| canvas env |
	canvas := aMEnvironment canvas on: stream.
	env := canvas environment name: aMEnvironment environmentName.
	aMEnvironment parameters do: [ :param | env parameter: param asMathex asString ].
	env with: [ aMEnvironment inside acceptVisitor: self ].
	canvas flush