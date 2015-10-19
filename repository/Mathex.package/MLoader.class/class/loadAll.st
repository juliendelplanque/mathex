loading
loadAll
	self class methods
		select: [ :method | method hasPragmaNamed: #mathexExtension ]
		thenDo: [ :method | self perform: method selector ]