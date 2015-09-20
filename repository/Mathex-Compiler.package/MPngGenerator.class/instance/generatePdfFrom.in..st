generation
generatePdfFrom: aMathexObject in: aDirectory
	| pdflatex latexToCompile |
	pdflatex := MPdflatex new.
	pdflatex parametersAt: 'output-directory' put: aDirectory pathString.
	latexToCompile := self createCompilableLatexWith: aMathexObject.
	aDirectory exists
		ifFalse: [ aDirectory createDirectory ].
	Transcript show: 'echo ''' , latexToCompile , ''' | ' , pdflatex createCommand; cr.
	OSProcess waitForCommand: 'echo ''' , latexToCompile , ''' | ' , pdflatex createCommand.
	
	^aDirectory / 'texput.pdf'