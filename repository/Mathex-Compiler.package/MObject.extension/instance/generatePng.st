*Mathex-Compiler
generatePng
	"Generate a png and return its path"
	| mObject |
	"Check if the object is already in one of the math environments."
	(self class isMathEnvironment)
		ifFalse: [ mObject := self math ]
		ifTrue: [ mObject := self ].
		
	^MPngGenerator new generatePngFor: mObject