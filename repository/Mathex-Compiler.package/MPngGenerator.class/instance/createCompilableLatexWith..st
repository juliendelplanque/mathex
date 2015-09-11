as yet unclassified
createCompilableLatexWith: aMathexObject
	^'\documentclass[preview]{standalone}\begin{document}' , (aMathexObject contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]) , '\end{document}'