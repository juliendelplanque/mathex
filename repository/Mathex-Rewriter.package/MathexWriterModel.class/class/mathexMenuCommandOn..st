world menu
mathexMenuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'MathexWriter')	 
		help: 'Open a MathexWriter';
		order: 0;
		icon: Smalltalk ui icons editIcon;
		action: [ self new openWithSpec. ].