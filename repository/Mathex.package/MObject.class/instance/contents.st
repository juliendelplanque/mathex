accessing
contents
	| stream |
	stream := PROutputStream on: String new writeStream. 
	stream configuration: PRCocoonConfiguration new.
	self on: stream.
	^stream contents