loading
loadMisc
	<mathexExtension>
	
	Metacello new
    baseline: 'MathexMisc';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Misc'