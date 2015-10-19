tests-command creation
testCreateCommand
	| mPdflatex |
	mPdflatex := MPdflatex new.
	mPdflatex
		parametersAt: 'output-directory' put: '/tmp';
		targetFile: 'test.tex'.
	
	self assert: mPdflatex createCommand equals: 'pdflatex -output-directory /tmp test.tex'