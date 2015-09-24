generation
manageDisplayOn: aComposite morph: aMorph for: aMathexObject
	self
		forkGeneratePngSilentlyFrom: aMathexObject
		in: (FileLocator temp / 'mathex' / aMathexObject identityHash asString)
		thenDo: [ :file |
			aMorph morph: (PNGReadWriter formFromStream: file readStream) asMorph.
			aComposite update  ]