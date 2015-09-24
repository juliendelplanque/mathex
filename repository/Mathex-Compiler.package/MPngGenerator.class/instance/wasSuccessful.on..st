checking
wasSuccessful: pdflatexOutput on: aPath
	| regex |
	regex :=  '.*Output written on ' , aPath pathString , '.*'.
	^ pdflatexOutput matchesRegex: regex