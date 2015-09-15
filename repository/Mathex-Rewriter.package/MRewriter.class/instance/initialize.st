initialization
initialize
	super initialize.
	rewriter := RBParseTreeRewriter new.
	rewriter
		replace: ' `#aLiteral'
    	with: '`#aLiteral asMathex';
		yourself.
		