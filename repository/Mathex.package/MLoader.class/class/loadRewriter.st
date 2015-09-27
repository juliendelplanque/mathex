loading
loadRewriter
	Metacello new
    baseline: 'MathexRewriter';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Rewriter'