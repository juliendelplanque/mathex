accessing
mathexTempDir
	(FileLocator temp / 'mathex') exists
		ifFalse: [ (FileLocator temp / 'mathex')  createDirectory ].
	^ (FileLocator temp / 'mathex') 