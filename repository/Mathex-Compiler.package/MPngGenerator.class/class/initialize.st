initialization
initialize
	super initialize.
	self mathexTempDir exists
		ifFalse: [ self mathexTempDir createDirectory ].