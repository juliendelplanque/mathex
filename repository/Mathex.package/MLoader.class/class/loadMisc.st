loading
loadMisc
	Metacello new
    baseline: 'MathexMisc';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Misc'