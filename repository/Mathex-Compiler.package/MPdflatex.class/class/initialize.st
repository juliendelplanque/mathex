initialization
initialize
	| checkForPdflatex |
	super initialize.
	self isAvailable: (CACheckerUNIX isAvailable: 'pdflatex').
	checkForPdflatex := StartupAction
								name: 'Check for pdflatex'
								code: 'MPdflatex isAvailable: (CACheckerUNIX isAvailable: ''pdflatex'')'.
	StartupPreferencesLoader default addAtStartupInImageDirectory: { checkForPdflatex }