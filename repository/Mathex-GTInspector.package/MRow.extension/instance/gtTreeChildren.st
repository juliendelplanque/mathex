*Mathex-GTInspector
gtTreeChildren
	^(self collection ifNil: [ ^OrderedCollection new ])
		collect: #asMathex