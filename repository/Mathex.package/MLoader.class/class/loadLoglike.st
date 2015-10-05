loading
loadLoglike
	<mathexExtension>
	
	Metacello new
    baseline: 'MathexLoglike';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Loglike'