generation
generatePngFrom: aMathexObject in: aDirectory
	| pdfFile convert pngFile |
	aDirectory exists ifTrue: [ aDirectory deleteAllChildren ].
	pdfFile := self generatePdfFrom: aMathexObject in: aDirectory.
	pngFile := (aDirectory / 'generated.png').
	convert := MConvert new density: 300; quality: 90; yourself.
	convert
		pdfFile: pdfFile pathString;
		pngFile: pngFile pathString.
	
	OSProcess waitForCommand: convert createCommand.
	^pngFile