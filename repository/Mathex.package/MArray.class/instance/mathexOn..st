stream out
mathexOn: aPRStream
	| canvas env |
	canvas := PRLaTeXCanvas on: aPRStream.
	env := canvas environment name: self environmentName.
	self parameters do: [ :param | env parameter: param asString ].
	env with: [ self inside doWithIndex: [ :row :i |
						row mathexOn: aPRStream.
						(i = self inside size or: [ row class = MHLine ])
							ifFalse: [ canvas command name: '\' ].
						canvas raw: ' ' ] ].
	canvas flush