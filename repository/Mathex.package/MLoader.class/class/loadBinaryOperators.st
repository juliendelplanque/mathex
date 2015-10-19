loading
loadBinaryOperators
	<mathexExtension>
	
	Metacello new
    baseline: 'MathexBinaryOperators';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-BinaryOperators'