gt-inspector management
manageDisplayOn: aComposite morph: aMorph for: aMathexObject
	self
		forkGeneratePngSilentlyFrom: aMathexObject
		in: (self class mathexTempDir / aMathexObject identityHash asString)
		thenDo: [ :file |
			aMorph morph: (PNGReadWriter formFromStream: file readStream) asMorph.
			aComposite update  ]
		on: MCompilationError
		do:  [ :exception |
			aMorph morph: 'Compilation failed.' asMorph.
			aComposite update.
			SpecDebugger debugError: exception ]