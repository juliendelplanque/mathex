as yet unclassified
latexParametersOn: aStream
	parameters doWithIndex: [ :param :i |
		param printOn: aStream.
		(i = parameters size)
			ifFalse: [ aStream << $, ] ]