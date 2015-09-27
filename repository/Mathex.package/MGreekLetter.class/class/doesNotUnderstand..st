reflective operations
doesNotUnderstand: aMessage
	"Allow to do things like:
		MGreekLetter theta.
	"
	
	(self list anySatisfy: [ :letter | letter = aMessage selector ])
		ifTrue: [ ^self new letter: aMessage selector ].
	^ Object doesNotUnderstand: aMessage