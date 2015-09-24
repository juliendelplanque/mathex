generation
forkGeneratePngSilentlyFrom: aMathexObject in: aDirectory thenDo: aBlock
	| path |
	[ path := self generatePngFor: aMathexObject in: aDirectory.
	  aBlock value: path  ] fork