command generation
createCommand
	| command |
	command := OrderedCollection with: 'convert'.
		command
			add: '-density';
			add: self density asString;
			add: self pdfFile;
			add: '-quality';
			add: self quality asString;
			add: self pngFile .
	^command fold: [ :x :y | x , ' ' , y ]
	