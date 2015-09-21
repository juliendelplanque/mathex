stream out
mathexOn: aPRStream
	| canvas env |
	canvas := self canvas on: aPRStream.
	env := canvas environment name: self environmentName.
	self parameters do: [ :param | env parameter: param asString ].
	env with: [ self inside doWithIndex: [ :row :i |
						row mathexOn: aPRStream.
						(i = self inside size or: [ row class = MHLine ])
							ifFalse: [ #newline asMathex mathexOn: aPRStream ].
						canvas raw: ' ' ] ].
	canvas flush