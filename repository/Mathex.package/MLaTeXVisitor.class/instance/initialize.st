initialization
initialize
	super initialize.
	stream := PROutputStream on: String new writeStream. 
	stream configuration: PRCocoonConfiguration new.