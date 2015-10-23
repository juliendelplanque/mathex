*Mathex
compileShortMathex
	^ (OpalCompiler evaluate: (MRewriter new rewrite: self sourceNode formattedCode)) value