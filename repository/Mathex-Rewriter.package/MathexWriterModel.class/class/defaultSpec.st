specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				add: #regularSmalltalkLabel height: self toolbarHeight;
				add: #smalltalkTextModel;
				add: #mathexSmalltalkLabel height: self toolbarHeight;
				add: #mathexTextModel;
				add: #latexLabel height: self toolbarHeight;
				add: #latexResultModel;
				newRow: [ :row |
					row
						add: #inspectButton;
						add: #generationButton ] height: self toolbarHeight
		];
		yourself