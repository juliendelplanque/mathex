visiting
visitMArray: aMArray
	| canvas env |
	canvas := aMArray canvas on: stream.
	env := canvas environment name: aMArray environmentName.
	aMArray parameters do: [ :param | env parameter: param asString ].
	env with: [ aMArray inside doWithIndex: [ :row :i |
						row acceptVisitor: self.
						(i = aMArray inside size or: [ row class = MHLine ])
							ifFalse: [ #newline asMathex acceptVisitor: self ].
						canvas raw: ' ' ] ].
	canvas flush