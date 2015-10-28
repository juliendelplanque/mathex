helpers
compileMathex
	"Compile the Smalltalk code into a Mathex object."
	| codeToCompile mathexObject |
	codeToCompile := (self parameters at: 'value').
	self isShortMathex
		ifTrue: [ codeToCompile := MRewriter new rewrite: codeToCompile ].
	mathexObject := (OpalCompiler evaluate: codeToCompile).
	^ mathexObject compilableObject "Ensure that the root is a math environment."