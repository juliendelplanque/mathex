accessing
letter: aString
	(self class list anySatisfy: [ :greekLetter | greekLetter = aString ])
		ifTrue: [ letter := aString ]
		ifFalse: [ UnknownGreekLetter signal ]