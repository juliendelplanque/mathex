stream out
mathexOn: aPRStream
	| canvas env |
	canvas := self canvas on: aPRStream.
	env := canvas environment name: self environmentName.
	self parameters do: [ :param | env parameter: param asString ].
	env with: [ self inside mathexOn: aPRStream ].
	canvas flush