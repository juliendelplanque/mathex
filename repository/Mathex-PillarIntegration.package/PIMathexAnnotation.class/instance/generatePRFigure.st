helpers
generatePRFigure
	| generatedPdfPath figure |
	generatedPdfPath := MPngGenerator new
								generatePngFrom: self compileMathex
								in: FileLocator workingDirectory / 'mathex-pdf' / self identityHash asString.
	figure := PRFigure new
					reference: 'file://' , generatedPdfPath pathString;
					yourself.
	^ figure