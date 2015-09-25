generation - fork
forkGeneratePngSilentlyFrom: aMathexObject in: aDirectory thenDo: aBlock
	| path |
	[ path := self generatePngFrom: aMathexObject in: aDirectory.
	  aBlock value: path  ] fork