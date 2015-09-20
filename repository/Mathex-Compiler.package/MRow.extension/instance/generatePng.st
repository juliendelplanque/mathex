*Mathex-Compiler
generatePng
	"This allows to display a single row from a MArray even if it is not allowed in LaTeX.
	 The trick is to put the row in an array for the png generation."
	^MPngGenerator new
		generatePngFor: (MArray new
								parameter: (String newFrom: (self collection collect: [ :each | $c ]));
								addRow: self collection;
								math)