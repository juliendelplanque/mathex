visiting
visitMCommand: aMCommand
	aMCommand optParameters
		do: [ :optParam | optParam asMathex acceptVisitor: self ].
	aMCommand parameters
		do: [ :param | param asMathex acceptVisitor: self  ].
	dependencies addAll: aMCommand class requestedPackages