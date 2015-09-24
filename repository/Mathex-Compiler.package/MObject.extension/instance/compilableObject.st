*Mathex-Compiler
compilableObject
	"Return an object that can be included in a latex source file.
	 Check if the object is already in one of the math environments if not, send #math."
	(self class isMathEnvironment)
		ifFalse: [ ^self math ]
		ifTrue: [ ^self ].
		