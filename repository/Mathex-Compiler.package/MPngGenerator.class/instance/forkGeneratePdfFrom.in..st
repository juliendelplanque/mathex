generation
forkGeneratePdfFrom: aMathexObject in: aDirectory
	[ self generatePdfFrom: aMathexObject in: aDirectory. UIManager inform: 'Mathex compiled!' ] fork