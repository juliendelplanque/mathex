accessing
parameter: anObject
	"When this method is called for the first time, it set the parameter. The second time it set the opt parameter."
	isFirst
		ifTrue: [
			super parameter: anObject.
			isFirst := false ]
		ifFalse: [ super optParameter: anObject ]