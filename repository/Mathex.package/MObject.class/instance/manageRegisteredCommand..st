unknown messages handling
manageRegisteredCommand: aMessage
	self class registeredCommands
		detect: [ :symbol | symbol = aMessage selector ]
		ifFound: [ :symbol |
			| block |
			block := self class registeredCommandsAt: symbol.
			(block argumentCount = (aMessage arguments size + 1))
				ifFalse: [ ^super doesNotUnderstand: aMessage ].
			^block valueWithArguments: (Array with: self withAll: aMessage arguments) ]
		ifNone: [ ^super doesNotUnderstand: aMessage ]