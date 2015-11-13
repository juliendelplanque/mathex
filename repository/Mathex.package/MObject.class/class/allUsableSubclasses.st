private
allUsableSubclasses
	"Answer subclasses names that may be used in #doesNotUnderstand: look up."
	
	^ self allSubclasses select: #isUsable