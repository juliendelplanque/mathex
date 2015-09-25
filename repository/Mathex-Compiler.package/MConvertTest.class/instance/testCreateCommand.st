tests-command generation
testCreateCommand
	| mConvert |
	mConvert := MConvert new.
	mConvert
		density: 300;
		pdfFile: '/tmp/test.pdf';
		quality: 200;
		pngFile: '/tmp/test.png'.
	
	self assert: mConvert createCommand equals: 'convert -density 300 /tmp/test.pdf -quality 200 /tmp/test.png'