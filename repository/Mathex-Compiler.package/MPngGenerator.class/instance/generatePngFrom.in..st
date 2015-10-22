generation
generatePngFrom: aMathexObject in: aDirectory
	| pdfFile convert pngFile |
	MConvert isAvailable
		ifFalse: [ MCommandUnavailable signal: 'The command ''convert'' was not found in your $PATH.' ].
	aDirectory exists ifTrue: [ aDirectory deleteAllChildren ].
	pdfFile := self generatePdfFrom: aMathexObject in: aDirectory.
	pngFile := (aDirectory / 'generated.png').
	convert := MConvert new density: 300; quality: 90; yourself.
	convert
		pdfFile: pdfFile pathString;
		pngFile: pngFile pathString.
	
	OSProcess waitForCommand: convert createCommand.
	^pngFile