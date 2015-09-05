accessing
parameters
	^ Array with: (String newFrom: (self rows first collection collect: [ :e | $c ]))