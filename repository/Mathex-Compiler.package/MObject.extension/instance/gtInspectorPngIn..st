*Mathex-Compiler
gtInspectorPngIn: composite
	<gtInspectorPresentationOrder: 0>

	composite morph
			title: 'Preview';
			display: [ PNGReadWriter formFromStream: self generatePng readStream ]