generation
createCompilableLatexWith: aMathexObject
	| documentClass finalObject requestedPackages |
	documentClass := MDocumentClass new.
	documentClass
		parameter: 'standalone' asMathex;
		optParameter: 'preview' asMathex.
	requestedPackages := aMathexObject allRequestedPackages
									collect: [ :str | MUsepackage new parameter: str asMathex ].
	finalObject := documentClass ,, (requestedPackages fold: [ :a :b | a,, b ]) ,, aMathexObject document.
	^ finalObject contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]