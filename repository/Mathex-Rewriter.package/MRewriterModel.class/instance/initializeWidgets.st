initialization
initializeWidgets
	
	self initializeTextModels.
	
	inspectButton := self newButton.
	inspectButton
		label: 'Inspect';
		action: [ self generateLaTex inspect ].
	generationButton := self newButton.
	generationButton
		label: 'Generate LaTeX';
		action: [ self latexResultModel text: self generateLaTex asString ].
	
	self focusOrder
		add: smalltalkTextModel;
		add: mathexTextModel;
		add: generationButton