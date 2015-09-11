as yet unclassified
createCommand
	| command |
	command := OrderedCollection with: 'convert'.
		command
			add: '-density 300';
			add: pdfFile;
			add: '-quality 90';
			add: pngFile .
	^command fold: [ :x :y | x , ' ' , y ]
	