generation
generatePdfFrom: aMathexObject in: aDirectory
	| pdflatex latexFile pdflatexOutput |
	MPdflatex isAvailable
		ifFalse: [ MCommandUnavailable signal: 'The command ''pdflatex'' was not found in your $PATH.' ].
	AioEventHandler initializeAioPluginPresent.
	aDirectory exists
		ifFalse: [ aDirectory createDirectory ].
	latexFile := self createCompilableLatexWith: aMathexObject in: aDirectory.
	pdflatex := MPdflatex new.
	pdflatex
		parametersAt: 'output-directory' put: aDirectory pathString;
		targetFile: latexFile pathString.
	pdflatexOutput := (PipeableOSProcess command: pdflatex createCommand) output.
	
	(aDirectory / 'generated.pdf') exists
		ifFalse: [ MCompilationError signal: pdflatexOutput ].
	^aDirectory / 'generated.pdf'