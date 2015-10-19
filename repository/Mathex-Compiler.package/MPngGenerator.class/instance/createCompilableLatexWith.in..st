generation
createCompilableLatexWith: aMathexObject in: aDirectory
	| documentClass finalObject requestedPackages requestedPackagesString finalContents |
	documentClass := MDocumentClass new.
	documentClass
		parameter: 'standalone' asMathex;
		optParameter: 'preview' asMathex.
	requestedPackages := aMathexObject allRequestedPackages
									collect: [ :str | MUsepackage new parameter: str asMathex ].
	requestedPackagesString := requestedPackages ifEmpty: [ '' ] ifNotEmpty: [ requestedPackages fold: [ :a :b | a,, b ] ].
	finalObject := documentClass ,, requestedPackagesString ,, aMathexObject document.
	finalContents := finalObject contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ].
	(FileStream newFileNamed: (aDirectory / 'generated.tex'))
		<< finalContents;
		close.
	^ aDirectory / 'generated.tex'