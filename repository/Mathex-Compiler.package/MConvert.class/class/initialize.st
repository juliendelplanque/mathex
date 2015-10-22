initialization
initialize
	| checkForConvert |
	super initialize.
	checkForConvert := StartupAction
								name: 'Check for pdflatex'
								code: 'MConvert isAvailable: (CACheckerUNIX isAvailable: ''convert'')'.
	StartupPreferencesLoader default addAtStartupInImageDirectory: { checkForConvert }