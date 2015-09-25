checking
determinatePdfPath: pdflatexOutput
	[ ^((pdflatexOutput
			regex: 'Output written on.*\.pdf'
			matchesCollect: [ :w | w]) first substrings
				select: [ :sub | sub matchesRegex: '(/.*)+\.pdf' ]) first asFileReference ]
		on: SubscriptOutOfBounds
		do: [ MCompilationError signal: pdflatexOutput ]