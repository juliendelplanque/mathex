generation - fork
forkGeneratePngFrom: aMathexObject in: aDirectory
	self
		forkGeneratePngSilentlyFrom: aMathexObject
		in: aDirectory thenDo: [ :file | UIManager inform: 'Mathex compiled in ', file pathString ]