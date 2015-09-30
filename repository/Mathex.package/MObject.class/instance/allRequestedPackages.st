accessing
allRequestedPackages
	"This explores all objects in the tree and returns the list of LaTeX packages needed."
	| visitor |
	visitor := MLaTeXDependenciesVisitor new.
	self acceptVisitor: visitor.
	^ visitor dependencies