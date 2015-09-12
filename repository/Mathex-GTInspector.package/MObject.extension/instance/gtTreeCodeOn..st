*Mathex-GTInspector
gtTreeCodeOn: aComposite
	<gtInspectorPresentationOrder: 3>

	aComposite tree 
		title: 'Tree';
		display: [ self ];
		children: [ :each | each gtTreeChildren ];
		format: [ :each | each className ]