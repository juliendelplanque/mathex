*Mathex-GTInspector
gtTreeChildren
	^(OrderedCollection with: self leftParameter with: self rightParameter)
		select: [ :each | each isNotNil ] thenCollect: [ :each | each asMathex ]