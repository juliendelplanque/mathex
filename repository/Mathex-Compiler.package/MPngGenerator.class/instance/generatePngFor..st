as yet unclassified
generatePngFor: aMathexObject
	| pdfFile convert |
	(FileLocator temp / 'mathex') deleteAllChildren.
	pdfFile := self generatePdfFrom: aMathexObject in: FileLocator temp / 'mathex'.
	convert := MConvert new.
	convert
		pdfFile: pdfFile pathString;
		pngFile: (pdfFile / '..' / 'generated.png') pathString.
	Transcript show: convert createCommand.
	OSProcess waitForCommand: convert createCommand.
	^pdfFile / '..' / 'generated.png'