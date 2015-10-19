generation - fork
forkGeneratePngSilentlyFrom: aMathexObject in: aDirectory thenDo: aBlock on: anException do: exBlock
	| path |
	[ [ path := self generatePngFrom: aMathexObject in: aDirectory.
	  aBlock value: path ] on: anException do: exBlock  ] fork