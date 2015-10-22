initialization
initialize
	| checkForConvert |
	super initialize.
	self isAvailable: (CACheckerUNIX isAvailable: 'convert').
	checkForConvert := StartupAction
								name: 'Check for pdflatex'
								code: 'MConvert isAvailable: (CACheckerUNIX isAvailable: ''convert'')'.
	StartupPreferencesLoader default addAtStartupInImageDirectory: { checkForConvert }