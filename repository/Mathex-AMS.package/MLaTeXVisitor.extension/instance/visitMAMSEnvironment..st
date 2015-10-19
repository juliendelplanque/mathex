*Mathex-AMS
visitMAMSEnvironment: aMAMASEnvironment
	| canvas env |
	canvas := aMAMASEnvironment canvas on: stream.
	env := canvas environment name: aMAMASEnvironment environmentName.
	aMAMASEnvironment parameters do: [ :param | env parameter: param asString ].
	env with: [ aMAMASEnvironment rows doWithIndex: [ :row :i |
						aMAMASEnvironment row doWithIndex: [ :item :j |
							item asMathex acceptVisitor: self.
							(j = aMAMASEnvironment row size)
								ifFalse: [ #rowand asMathex acceptVisitor: self ] ].
							(i = aMAMASEnvironment rows size)
								ifFalse: [ #newline asMathex acceptVisitor: self ] ] ].
	canvas flush