loading
loadRewriter
	<mathexExtension>

	Metacello new
    baseline: 'MathexRewriter';
    repository: self repositoryUrl;
    load.
	self informPackageLoaded: 'Mathex-Rewriter'