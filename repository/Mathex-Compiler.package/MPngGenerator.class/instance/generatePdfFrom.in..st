generation
generatePdfFrom: aMathexObject in: aDirectory
	| pdflatex latexToCompile pdflatexOutput   |
	AioEventHandler initializeAioPluginPresent.
	pdflatex := MPdflatex new.
	pdflatex parametersAt: 'output-directory' put: aDirectory pathString.
	latexToCompile := self createCompilableLatexWith: aMathexObject.
	aDirectory exists
		ifFalse: [ aDirectory createDirectory ].

	pdflatexOutput := ((PipeableOSProcess
								command: (self echoCommand: latexToCompile))
												| (pdflatex createCommand)) output.
	
	^self determinatePdfPath: pdflatexOutput
	"(self wasSuccessful: pdflatexOutput on: (aDirectory / 'standalone.pdf'))
		ifFalse: [ MCompilationError signal: pdflatexOutput ].
	
	^aDirectory / 'standalone.pdf'"