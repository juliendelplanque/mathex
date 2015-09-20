initialization
initializeTextModels
	mathexTextModel := self newText.
	mathexTextModel
		aboutToStyle: true;
		autoAccept: true.
	
	smalltalkTextModel := self newText.
	smalltalkTextModel
		aboutToStyle: true;
		autoAccept: true.
	
	latexResultModel := self newText.
	latexResultModel
		aboutToStyle: false;
		autoAccept: false
		