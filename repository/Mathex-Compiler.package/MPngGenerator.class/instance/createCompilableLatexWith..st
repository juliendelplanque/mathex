generation
createCompilableLatexWith: aMathexObject
	| stream canvas |
	stream := PROutputStream on: String new writeStream. 
	stream configuration: PRCocoonConfiguration new.
	canvas := PRLaTeXCanvas on: stream.
	(canvas command name: 'documentclass')
		optParameter: 'preview';
		parameter: 'standalone'.
	(canvas environment name: 'document')
		with: [ (aMathexObject contents select: [ :c | c ~= Character cr and: [ c ~= Character lf ] ]) mathexOn: stream ].
	canvas flush.
	^ stream contents