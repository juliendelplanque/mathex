generation
createCompilableLatexWith: aMathexObject
	| documentClass finalObject |
	documentClass := MDocumentClass new.
	documentClass
		parameter: 'standalone' asMathex;
		optParameter: 'preview' asMathex.
	finalObject := documentClass ,, aMathexObject document.
	^ finalObject contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]