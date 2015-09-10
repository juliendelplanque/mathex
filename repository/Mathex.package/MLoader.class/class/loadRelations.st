loading
loadRelations
	Metacello new
    baseline: 'MathexRelations';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Relations'