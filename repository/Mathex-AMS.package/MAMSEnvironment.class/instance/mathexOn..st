stream out
mathexOn: aPRStream
	| canvas env |
	canvas := self canvas on: aPRStream.
	env := canvas environment name: self environmentName.
	self parameters do: [ :param | env parameter: param asString ].
	env with: [ self rows doWithIndex: [ :row :i |
						row doWithIndex: [ :item :j |
							item asMathex mathexOn: aPRStream.
							(j = row size)
								ifFalse: [ #rowand asMathex mathexOn: aPRStream ] ].
							(i = self rows size)
								ifFalse: [ #newline asMathex mathexOn: aPRStream ] ] ].
	canvas flush