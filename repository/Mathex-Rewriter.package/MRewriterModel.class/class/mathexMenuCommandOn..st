world menu
mathexMenuCommandOn: aBuilder
	<worldMenu>
	(aBuilder group: #'Mathex Tools')
		withSeparatorAfter;
		order: 10;
		target: Smalltalk tools;
		with: [
			(aBuilder item: #'Mathex Rewriter')
				help: 'Open a MathexRewriter';
				order: 1;
				icon: Smalltalk ui icons editIcon;
				action: [ self new openWithSpec. ] ]