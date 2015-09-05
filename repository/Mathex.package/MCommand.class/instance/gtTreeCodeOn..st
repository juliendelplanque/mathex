gt-inspector-extension
gtTreeCodeOn: aComposite
	<gtInspectorPresentationOrder: 2>

	aComposite tree 
		title: 'Tree';
		display: [ self ];
		children: [ :each | [ each parameters ] on: Exception do: [ #() ] ]