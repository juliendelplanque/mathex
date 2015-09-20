*Mathex-GTInspector
gtTreeChildren
	^(OrderedCollection with: self leftParameter with: self rightParameter)
		select: #isNotNil thenCollect: #asMathex