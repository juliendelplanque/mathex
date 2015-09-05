initialization
initialize
	super initialize.
	delimiters := MBigDelimiters new
							inside: (MParenthesis new inside: [ self asString ]);
							yourself