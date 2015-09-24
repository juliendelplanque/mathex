*Mathex-Compiler
gtInspectorPngIn: composite
	<gtInspectorPresentationOrder: 0>

	| morph |
	morph := composite morph
			title: 'Preview';
			display: [ 'Preparing preview...' ];
			yourself.
	
	MPngGenerator new manageDisplayOn: composite morph: morph for: self compilableObject