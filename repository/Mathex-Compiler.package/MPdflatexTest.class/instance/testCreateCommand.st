tests-command creation
testCreateCommand
	| mPdflatex |
	mPdflatex := MPdflatex new.
	mPdflatex
		parametersAt: 'output-directory' put: '/tmp'.
	
	self assert: mPdflatex createCommand equals: 'pdflatex -output-directory /tmp'