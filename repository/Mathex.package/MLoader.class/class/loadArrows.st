loading
loadArrows
	Metacello new
    baseline: 'MathexArrows';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Arrows'