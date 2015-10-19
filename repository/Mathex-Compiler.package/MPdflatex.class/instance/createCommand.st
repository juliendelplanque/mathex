command creation
createCommand
	| command |
	command := OrderedCollection with: 'pdflatex'.
	self parameterDict keysAndValuesDo: [ :key :value |
		command
			add: ('-' , key);
			add: value ].
	^((command fold: [ :x :y | x , ' ' , y ]) , ' ' , (self targetFile ifNil: [ '' ]))
	