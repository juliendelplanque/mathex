initialization
initialize
	| checkForPdflatex |
	super initialize.
	checkForPdflatex := StartupAction
								name: 'Check for pdflatex'
								code: 'MPdflatex isAvailable: (CACheckerUNIX isAvailable: ''pdflatex'')'.
	StartupPreferencesLoader default addAtStartupInImageDirectory: { checkForPdflatex }