loading
loadCompiler
	Metacello new
    baseline: 'MathexCompiler';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Compiler'