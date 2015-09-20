world menu
mathexMenuCommandOn: aBuilder
	<worldMenu>
	(aBuilder group: #MathexTools)
		withSeparatorAfter;
		order: 10;
		target: Smalltalk tools;
		with: [
			(aBuilder item: #'MathexWriter')
				help: 'Open a MathexWriter';
				order: 1;
				icon: Smalltalk ui icons editIcon;
				action: [ self new openWithSpec. ] ]