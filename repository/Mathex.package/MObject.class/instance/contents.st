accessing
contents
	| stream |
	stream := PROutputStream on: String new writeStream. 
	stream configuration: PRCocoonConfiguration new.
	self mathexOn: stream.
	^stream contents