accessing
symbol
	^ (self selector asString select: [ :char | char ~= $: ]) asSymbol