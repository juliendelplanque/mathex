stream out
on: aPRStream
	| canvas |
	canvas := PRLaTeXCanvas on: aPRStream.
	canvas command
		name: self commandName;
		parameter: ((self parameters collect: [ :param | param asString ]) fold: [ :x :y | x , ',' , y ]).
	canvas flush