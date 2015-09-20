rewriting
rewrite: aString
	self rewriter executeTree: (RBParser parseExpression: aString).
	^rewriter tree formattedCode