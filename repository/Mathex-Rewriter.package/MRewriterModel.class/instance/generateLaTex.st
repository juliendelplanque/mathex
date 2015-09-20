latex generation
generateLaTex
	^OpalCompiler evaluate: self smalltalkTextModel text , '.' , (self rewrite: self mathexTextModel text)